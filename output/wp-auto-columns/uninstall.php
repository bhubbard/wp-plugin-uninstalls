<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_auto_columns_split_style');
delete_site_option('wp_auto_columns_split_style');
delete_option('wp_auto_columns_line_height');
delete_site_option('wp_auto_columns_line_height');
delete_option('wp_auto_columns_tags_headers');
delete_site_option('wp_auto_columns_tags_headers');
delete_option('wp_auto_columns_tags_splittable');
delete_site_option('wp_auto_columns_tags_splittable');
delete_option('wp_auto_columns_height_modifiers');
delete_site_option('wp_auto_columns_height_modifiers');

