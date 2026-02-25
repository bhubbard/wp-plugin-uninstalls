<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bmfm_is_blinds_order_placed');
delete_site_option('bmfm_is_blinds_order_placed');
delete_option('bmfm_freemium_page_id');
delete_site_option('bmfm_freemium_page_id');
delete_option('bmfm_shop_blinds_page_id');
delete_site_option('bmfm_shop_blinds_page_id');
delete_option('bmfm_shop_accessories_page_id');
delete_site_option('bmfm_shop_accessories_page_id');
delete_option('bmfm_settings_resetted');
delete_site_option('bmfm_settings_resetted');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_page_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('woocommerce_email_from_name');
delete_site_option('woocommerce_email_from_name');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('bmfm_stored_data');
delete_site_option('bmfm_stored_data');
delete_option('bmfm_plugin_status');
delete_site_option('bmfm_plugin_status');
delete_option('bmfm_plugin_saved_date_timestamp');
delete_site_option('bmfm_plugin_saved_date_timestamp');
delete_option('bmfm_blinds_plugin_activated');
delete_site_option('bmfm_blinds_plugin_activated');
delete_option('bmfm_requested_post_id');
delete_site_option('bmfm_requested_post_id');
delete_option('bm_requested_post_id');
delete_site_option('bm_requested_post_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bmfm_blinds_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bmfm_blinds_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bmfm_blinds_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bmfm_blinds_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );

