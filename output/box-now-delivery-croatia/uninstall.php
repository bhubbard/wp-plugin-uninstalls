<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boxnow_button_color');
delete_site_option('boxnow_button_color');
delete_option('boxnow_button_text');
delete_site_option('boxnow_button_text');
delete_option('boxnow_partner_id');
delete_site_option('boxnow_partner_id');
delete_option('embedded_iframe');
delete_site_option('embedded_iframe');
delete_option('box_now_display_mode');
delete_site_option('box_now_display_mode');
delete_option('boxnow_locker_not_selected_message');
delete_site_option('boxnow_locker_not_selected_message');
delete_option('boxnow_gps_tracking');
delete_site_option('boxnow_gps_tracking');
delete_option('boxnow_api_url');
delete_site_option('boxnow_api_url');
delete_option('boxnow_client_id');
delete_site_option('boxnow_client_id');
delete_option('boxnow_client_secret');
delete_site_option('boxnow_client_secret');
delete_option('boxnow_warehouse_id');
delete_site_option('boxnow_warehouse_id');
delete_option('boxnow_voucher_option');
delete_site_option('boxnow_voucher_option');
delete_option('boxnow_voucher_email');
delete_site_option('boxnow_voucher_email');
delete_option('boxnow_allow_returns');
delete_site_option('boxnow_allow_returns');
delete_option('boxnow_mobile_number');
delete_site_option('boxnow_mobile_number');
delete_option('boxnow-save-data-addressline1');
delete_site_option('boxnow-save-data-addressline1');
delete_option('boxnow-save-data-postalcode');
delete_site_option('boxnow-save-data-postalcode');
delete_option('boxnow-save-data-addressline2');
delete_site_option('boxnow-save-data-addressline2');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_boxnow_parcel_order_id_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('boxnow_thankyou_page');
delete_site_option('boxnow_thankyou_page');

// Delete Transients
delete_transient('_manual_status_change');
delete_site_transient('_manual_status_change');

