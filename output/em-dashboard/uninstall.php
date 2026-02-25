<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('em_dashboard_force_easy_capability');
delete_site_option('em_dashboard_force_easy_capability');
delete_option('em_dashboard_load_easy');
delete_site_option('em_dashboard_load_easy');
delete_option('em_dashboard_force_easy');
delete_site_option('em_dashboard_force_easy');
delete_option('em_dashboard_color_scheme');
delete_site_option('em_dashboard_color_scheme');
delete_option('em_dashboard_em_styles');
delete_site_option('em_dashboard_em_styles');
delete_option('em_dashboard_color_picker');
delete_site_option('em_dashboard_color_picker');
delete_option('em_dashboard_nodes_allowed');
delete_site_option('em_dashboard_nodes_allowed');
delete_option('em_dashboard_nodes_delete');
delete_site_option('em_dashboard_nodes_delete');
delete_option('em_dashboard_nodes_sub_delete');
delete_site_option('em_dashboard_nodes_sub_delete');
delete_option('em_dashboard_nodes_meta_dashboard');
delete_site_option('em_dashboard_nodes_meta_dashboard');
delete_option('em_dashboard_nodes_meta_link');
delete_site_option('em_dashboard_nodes_meta_link');
delete_option('em_dashboard_nodes_meta_post');
delete_site_option('em_dashboard_nodes_meta_post');
delete_option('em_dashboard_nodes_meta_plugin');
delete_site_option('em_dashboard_nodes_meta_plugin');
delete_option('em_dashboard_em_fonts');
delete_site_option('em_dashboard_em_fonts');
delete_option('em_dashboard_easy_mode');
delete_site_option('em_dashboard_easy_mode');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'em_dashboard_easy_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'em_dashboard_easy_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'em_dashboard_easy_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'em_dashboard_easy_mode' ) );

