<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gleap_role_migration_done');
delete_site_option('gleap_role_migration_done');
delete_option('_gleap_selected_roles_only');
delete_site_option('_gleap_selected_roles_only');
delete_option('_gleap_selected_roles|||0|value');
delete_site_option('_gleap_selected_roles|||0|value');
delete_option('_gleap_frontend_selected_roles_only');
delete_site_option('_gleap_frontend_selected_roles_only');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%|value' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_gleap_admin_selected_roles_only');
delete_site_option('_gleap_admin_selected_roles_only');
delete_option('carbon_custom_sidebars');
delete_site_option('carbon_custom_sidebars');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

