<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_maintenance_settings_countdown');
delete_site_option('wp_maintenance_settings_countdown');
delete_option('wp_maintenance_settings_colors');
delete_site_option('wp_maintenance_settings_colors');
delete_option('wp_maintenance_active');
delete_site_option('wp_maintenance_active');
delete_option('wp_maintenance_version');
delete_site_option('wp_maintenance_version');
delete_option('wp_maintenance_settings_css');
delete_site_option('wp_maintenance_settings_css');
delete_option('wp_maintenance_settings');
delete_site_option('wp_maintenance_settings');
delete_option('wp_maintenance_settings_picture');
delete_site_option('wp_maintenance_settings_picture');
delete_option('wp_maintenance_settings_seo');
delete_site_option('wp_maintenance_settings_seo');
delete_option('wp_maintenance_settings_socialnetworks');
delete_site_option('wp_maintenance_settings_socialnetworks');
delete_option('wp_maintenance_list_socialnetworks');
delete_site_option('wp_maintenance_list_socialnetworks');
delete_option('wp_maintenance_settings_footer');
delete_site_option('wp_maintenance_settings_footer');
delete_option('wp_maintenance_settings_options');
delete_site_option('wp_maintenance_settings_options');
delete_option('wp_maintenance_limit');
delete_site_option('wp_maintenance_limit');
delete_option('wp_maintenance_social_options');
delete_site_option('wp_maintenance_social_options');
delete_option('wp_maintenance_ipaddresses');
delete_site_option('wp_maintenance_ipaddresses');
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');

