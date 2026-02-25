<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_likes_css');
delete_site_option('wp_likes_css');
delete_option('wp_likes_options');
delete_site_option('wp_likes_options');
delete_option('wp_likes_text');
delete_site_option('wp_likes_text');

