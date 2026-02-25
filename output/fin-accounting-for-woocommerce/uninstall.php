<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('finpose_accounts');
delete_site_option('finpose_accounts');
delete_option('fin-expense-categories');
delete_site_option('fin-expense-categories');
delete_option('finpose_removed_accounts');
delete_site_option('finpose_removed_accounts');
delete_option('finpose_settings');
delete_site_option('finpose_settings');
delete_option('finpose_errors');
delete_site_option('finpose_errors');
delete_option('fin-cost-categories');
delete_site_option('fin-cost-categories');
delete_option('fin-acquisition-categories');
delete_site_option('fin-acquisition-categories');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-categories' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fin-spending-types');
delete_site_option('fin-spending-types');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('finpose_version');
delete_site_option('finpose_version');
delete_option('finpose_db_version');
delete_site_option('finpose_db_version');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wf_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wf_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wf_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wf_invoice_number' ) );

