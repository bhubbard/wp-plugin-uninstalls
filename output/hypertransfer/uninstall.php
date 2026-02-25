<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hypertransfer_page_selection');
delete_site_option('hypertransfer_page_selection');
delete_option('hypertransfer_total_uploaded_files');
delete_site_option('hypertransfer_total_uploaded_files');
delete_option('hypertransfer_remove_data_on_uninstall');
delete_site_option('hypertransfer_remove_data_on_uninstall');
delete_option('hypertransfer_file_storage_limit');
delete_site_option('hypertransfer_file_storage_limit');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hypertransferItem_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hypertransfer_logo_color_orizzontale');
delete_site_option('hypertransfer_logo_color_orizzontale');
delete_option('hypertransfer_compress_file_on_server');
delete_site_option('hypertransfer_compress_file_on_server');
delete_option('hypertransfer_max_compress_file_on_server');
delete_site_option('hypertransfer_max_compress_file_on_server');
delete_option('hypertransfer_plugin_version');
delete_site_option('hypertransfer_plugin_version');
delete_option('hypertransfer_logo_bianco_simbolo');
delete_site_option('hypertransfer_logo_bianco_simbolo');
delete_option('hypertransfer_full_notified');
delete_site_option('hypertransfer_full_notified');
delete_option('hypertransfer_send_full_notification');
delete_site_option('hypertransfer_send_full_notification');
delete_option('hypertransfer_max_file_updatable');
delete_site_option('hypertransfer_max_file_updatable');

