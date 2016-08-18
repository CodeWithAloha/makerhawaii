<?php

if ( ! class_exists( 'Timber' ) ) {
	add_action( 'admin_notices', function() {
			echo '<div class="error"><p>Timber not activated. Make sure you activate the plugin in <a href="' . esc_url( admin_url( 'plugins.php#timber' ) ) . '">' . esc_url( admin_url( 'plugins.php' ) ) . '</a></p></div>';
		} );
	return;
}

require_once(dirname(__FILE__) . '/inc/routes.php');
Timber::$dirname = array('templates', 'views');

class StarterSite extends TimberSite {

	function __construct() {
		add_theme_support( 'post-formats' );
		add_theme_support( 'post-thumbnails' );
		add_theme_support( 'menus' );
		add_filter( 'timber_context', array( $this, 'add_to_context' ) );
		add_filter( 'get_twig', array( $this, 'add_to_twig' ) );
		add_action( 'init', array( $this, 'register_post_types' ) );
		add_action( 'init', array( $this, 'register_taxonomies' ) );
		parent::__construct();
	}

	function register_post_types() {
		//this is where you can register custom post types
		$labels = array(
			'name'                => __( 'Makerspaces', 'text-domain' ),
			'singular_name'       => __( 'Makerspace', 'text-domain' ),
			'add_new'             => _x( 'Add New Makerspace', 'text-domain', 'text-domain' ),
			'add_new_item'        => __( 'Add New Makerspace', 'text-domain' ),
			'edit_item'           => __( 'Edit Makerspace', 'text-domain' ),
			'new_item'            => __( 'New Makerspace', 'text-domain' ),
			'view_item'           => __( 'View Makerspace', 'text-domain' ),
			'search_items'        => __( 'Search Makerspaces', 'text-domain' ),
			'not_found'           => __( 'No Makerspaces found', 'text-domain' ),
			'not_found_in_trash'  => __( 'No Makerspaces found in Trash', 'text-domain' ),
			'parent_item_colon'   => __( 'Parent Makerspace:', 'text-domain' ),
			'menu_name'           => __( 'Makerspaces', 'text-domain' ),
		);

		$args = array(
			'labels'              => $labels,
			'hierarchical'        => false,
			'description'         => 'description',
			'taxonomies'          => array(),
			'public'              => true,
			'show_ui'             => true,
			'show_in_menu'        => true,
			'show_in_admin_bar'   => true,
			'menu_position'       => null,
			'menu_icon'           => null,
			'show_in_nav_menus'   => true,
			'publicly_queryable'  => true,
			'exclude_from_search' => false,
			'has_archive'         => true,
			'query_var'           => true,
			'can_export'          => true,
			'rewrite'             => true,
			'capability_type'     => 'post',
			'supports'            => array(
				'title', 'editor', 'author', 'thumbnail',
				'excerpt','custom-fields', 'trackbacks', 'comments',
				'revisions', 'page-attributes', 'post-formats'
				)
		);

		register_post_type( 'makerspace', $args );
	}

	function register_taxonomies() {
		$labels = array(
			'name'                       => _x( 'Makerspace types', 'taxonomy general name' ),
			'singular_name'              => _x( 'Makerspace type', 'taxonomy singular name' ),
			'search_items'               => __( 'Search Makerspace types' ),
			'popular_items'              => __( 'Popular Makerspace types' ),
			'all_items'                  => __( 'All Makerspace types' ),
			'parent_item'                => null,
			'parent_item_colon'          => null,
			'edit_item'                  => __( 'Edit Makerspace type' ),
			'update_item'                => __( 'Update Makerspace type' ),
			'add_new_item'               => __( 'Add New Makerspace type' ),
			'new_item_name'              => __( 'New Makerspace type Name' ),
			'separate_items_with_commas' => __( 'Separate Makerspace types with commas' ),
			'add_or_remove_items'        => __( 'Add or remove Makerspace types' ),
			'choose_from_most_used'      => __( 'Choose from the most used Makerspace types' ),
			'not_found'                  => __( 'No Makerspace types found.' ),
			'menu_name'                  => __( 'Makerspace types' ),
		);

		$args = array(
			'hierarchical'          => false,
			'labels'                => $labels,
			'show_ui'               => true,
			'show_admin_column'     => true,
			'update_count_callback' => '_update_post_term_count',
			'query_var'             => true,
		);

		register_taxonomy('maker_type', 'makerspace', $args );

		$tag_labels = array(
			'name'                       => _x( 'Makerspace Tags', 'taxonomy general name' ),
			'singular_name'              => _x( 'Makerspace Tag', 'taxonomy singular name' ),
			'search_items'               => __( 'Search Makerspace Tags' ),
			'popular_items'              => __( 'Popular Makerspace Tags' ),
			'all_items'                  => __( 'All Makerspace Tags' ),
			'parent_item'                => null,
			'parent_item_colon'          => null,
			'edit_item'                  => __( 'Edit Makerspace tag' ),
			'update_item'                => __( 'Update Makerspace tag' ),
			'add_new_item'               => __( 'Add New Makerspace tag' ),
			'new_item_name'              => __( 'New Makerspace Tag Name' ),
			'separate_items_with_commas' => __( 'Separate Makerspace Tags with commas' ),
			'add_or_remove_items'        => __( 'Add or remove Makerspace Tags' ),
			'choose_from_most_used'      => __( 'Choose from the most used Makerspace Tags' ),
			'not_found'                  => __( 'No Makerspace Tags found.' ),
			'menu_name'                  => __( 'Makerspace Tags' ),
		);

		$tag_args = array(
			'hierarchical'          => false,
			'labels'                => $tag_labels,
			'show_ui'               => true,
			'show_admin_column'     => true,
			'update_count_callback' => '_update_post_term_count',
			'query_var'             => true
		);
		register_taxonomy('maker_tag', 'makerspace', $tag_args);
	}

	function add_to_context( $context ) {
		$context['menu'] = new TimberMenu();
		$context['site'] = $this;
		return $context;
	}

	function add_to_twig( $twig ) {
		/* this is where you can add your own fuctions to twig */
		return $twig;
	}
}

new StarterSite();
?>
