<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_excerpt_generator_maj');
delete_site_option('wp_excerpt_generator_maj');
delete_option('wp_excerpt_generator_method');
delete_site_option('wp_excerpt_generator_method');
delete_option('wp_excerpt_generator_owntag');
delete_site_option('wp_excerpt_generator_owntag');
delete_option('wp_excerpt_generator_nbletters');
delete_site_option('wp_excerpt_generator_nbletters');
delete_option('wp_excerpt_generator_nbwords');
delete_site_option('wp_excerpt_generator_nbwords');
delete_option('wp_excerpt_generator_nbparagraphs');
delete_site_option('wp_excerpt_generator_nbparagraphs');
delete_option('wp_excerpt_generator_cleaner');
delete_site_option('wp_excerpt_generator_cleaner');
delete_option('wp_excerpt_generator_htmlOK');
delete_site_option('wp_excerpt_generator_htmlOK');
delete_option('wp_excerpt_generator_htmlBR');
delete_site_option('wp_excerpt_generator_htmlBR');
delete_option('wp_excerpt_generator_breakOK');
delete_site_option('wp_excerpt_generator_breakOK');
delete_option('wp_excerpt_generator_break');
delete_site_option('wp_excerpt_generator_break');
delete_option('wp_excerpt_generator_status');
delete_site_option('wp_excerpt_generator_status');
delete_option('wp_excerpt_generator_type');
delete_site_option('wp_excerpt_generator_type');
delete_option('wp_excerpt_generator_delete_shortcode');
delete_site_option('wp_excerpt_generator_delete_shortcode');
delete_option('wp_excerpt_generator_save');
delete_site_option('wp_excerpt_generator_save');
delete_option('wp_excerpt_generator_deleteExcerpt');
delete_site_option('wp_excerpt_generator_deleteExcerpt');
delete_option('wp_excerpt_generator_version');
delete_site_option('wp_excerpt_generator_version');

