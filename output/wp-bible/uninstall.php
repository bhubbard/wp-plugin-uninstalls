<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_bible_default_width');
delete_site_option('wp_bible_default_width');
delete_option('wp_bible_slim');
delete_site_option('wp_bible_slim');
delete_option('wp_bible_inline');
delete_site_option('wp_bible_inline');
delete_option('wp_bible_new_window');
delete_site_option('wp_bible_new_window');
delete_option('wp_bible_default_version');
delete_site_option('wp_bible_default_version');

