<?php

if ( ! class_exists( 'Timber' ) ) {
	add_action( 'admin_notices', function() {
			echo '<div class="error"><p>Timber not activated. Make sure you activate the plugin in <a href="' . esc_url( admin_url( 'plugins.php#timber' ) ) . '">' . esc_url( admin_url( 'plugins.php' ) ) . '</a></p></div>';
		} );
	return;
}

Timber::$dirname = array('templates', 'views');
require_once(dirname(__FILE__) . '/inc/routes.php');

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
		'name'                       => _x( 'Makerspace Types', 'taxonomy general name' ),
		'singular_name'              => _x( 'Makerspace Type', 'taxonomy singular name' ),
		'search_items'               => __( 'Search Makerspace Types' ),
		'popular_items'              => __( 'Popular Makerspace Types' ),
		'all_items'                  => __( 'All Makerspace Types' ),
		'parent_item'                => null,
		'parent_item_colon'          => null,
		'edit_item'                  => __( 'Edit Makerspace Type' ),
		'update_item'                => __( 'Update Makerspace Type' ),
		'add_new_item'               => __( 'Add New Makerspace Type' ),
		'new_item_name'              => __( 'New Makerspace Type Name' ),
		'separate_items_with_commas' => __( 'Separate Makerspace Types with commas' ),
		'add_or_remove_items'        => __( 'Add or remove Makerspace Types' ),
		'choose_from_most_used'      => __( 'Choose from the most used Makerspace Types' ),
		'not_found'                  => __( 'No Makerspace Types found.' ),
		'menu_name'                  => __( 'Makerspace Types' ),
	);

	$args = array(
		'hierarchical'          => false,
		'labels'                => $labels,
		'show_ui'               => true,
		'show_admin_column'     => true,
		'update_count_callback' => '_update_post_term_count',
		'query_var'             => true,
		'rewrite'               => array( 'slug' => 'Makerspace Type' ),
	);

	register_taxonomy( 'Makerspace Type', 'makerspace', $args );

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
