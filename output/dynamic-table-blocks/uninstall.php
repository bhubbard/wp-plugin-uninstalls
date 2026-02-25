<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dtbk_keep_tables_on_uninstall');
delete_site_option('dtbk_keep_tables_on_uninstall');
delete_option('dtbk_cron_enabled');
delete_site_option('dtbk_cron_enabled');
delete_option('dtbk-version');
delete_site_option('dtbk-version');
delete_option('dtbk_activation_status');
delete_site_option('dtbk_activation_status');
delete_option('dtbk_token');
delete_site_option('dtbk_token');
delete_option('dtbk_version');
delete_site_option('dtbk_version');

// Delete Transients
delete_transient('drbk_cron_lock');
delete_site_transient('drbk_cron_lock');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'managedynamic-table-blocks_page_list_dynamic_table_blockscolumnshidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'managedynamic-table-blocks_page_list_dynamic_table_blockscolumnshidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'managedynamic-table-blocks_page_list_dynamic_table_blockscolumnshidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'managedynamic-table-blocks_page_list_dynamic_table_blockscolumnshidden' ) );

