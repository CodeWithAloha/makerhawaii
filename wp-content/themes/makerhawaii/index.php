<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * e.g., it puts together the home page when no home.php file exists.
 *
 * Learn more: {@link https://codex.wordpress.org/Template_Hierarchy}
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */


$context = Timber::get_context();
$context['spaces'] = Timber::get_posts('post_type=makerspace&posts_per_page=-1');
$pages = Timber::get_posts('post_type=page&name=homepage');
$context['post'] = array_shift($pages);
Timber::render('index.twig', $context);

?>
