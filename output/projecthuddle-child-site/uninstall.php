<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ph_child_allow_guests');
delete_site_option('ph_child_allow_guests');
delete_option('ph_child_enabled_comment_roles');
delete_site_option('ph_child_enabled_comment_roles');
delete_option('dismissed-ph-flywheel-child');
delete_site_option('dismissed-ph-flywheel-child');
delete_option('dismissed-ph-wp-engine-child');
delete_site_option('dismissed-ph-wp-engine-child');
delete_option('ph_child_access_token');
delete_site_option('ph_child_access_token');
delete_option('ph_child_admin');
delete_site_option('ph_child_admin');
delete_option('ph_child_plugin_link');
delete_site_option('ph_child_plugin_link');
delete_option('ph_child_plugin_author');
delete_site_option('ph_child_plugin_author');
delete_option('ph_child_plugin_author_url');
delete_site_option('ph_child_plugin_author_url');
delete_option('ph_child_plugin_name');
delete_site_option('ph_child_plugin_name');
delete_option('ph_child_plugin_description');
delete_site_option('ph_child_plugin_description');
delete_option('ph_child_installed');
delete_site_option('ph_child_installed');
delete_option('ph_child_manual_connection');
delete_site_option('ph_child_manual_connection');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ph_child_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ph_child_parent_url');
delete_site_option('ph_child_parent_url');
delete_option('ph_child_id');
delete_site_option('ph_child_id');
delete_option('ph_child_api_key');
delete_site_option('ph_child_api_key');
delete_option('ph_child_signature');
delete_site_option('ph_child_signature');
delete_option('ph_child_project_id');
delete_site_option('ph_child_project_id');
delete_option('ph_child_admin_enabled');
delete_site_option('ph_child_admin_enabled');
delete_option('ph_child_connection_status');
delete_site_option('ph_child_connection_status');
delete_option('ph_child_commenters');
delete_site_option('ph_child_commenters');

