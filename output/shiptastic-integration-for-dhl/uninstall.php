<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_pr_dhl_paket_settings');
delete_site_option('woocommerce_pr_dhl_paket_settings');
delete_option('woocommerc_stc_dhl_import_finished');
delete_site_option('woocommerc_stc_dhl_import_finished');
delete_option('woocommerce_shiptastic_shipper_address_country');
delete_site_option('woocommerce_shiptastic_shipper_address_country');
delete_option('woocommerce_shiptastic_return_address_country');
delete_site_option('woocommerce_shiptastic_return_address_country');
delete_option('_wcdpi_settings_general');
delete_site_option('_wcdpi_settings_general');
delete_option('woocommerce_stc_internetmarke_import_finished');
delete_site_option('woocommerce_stc_internetmarke_import_finished');
delete_option('_wcdpi_settings_portokasse');
delete_site_option('_wcdpi_settings_portokasse');
delete_option('_wcdpi_settings_internetmarke_1c4a');
delete_site_option('_wcdpi_settings_internetmarke_1c4a');
delete_option('woocommerce_shiptastic_dhl_version');
delete_site_option('woocommerce_shiptastic_dhl_version');
delete_option('woocommerce_stc_dhl_enable_legacy_soap');
delete_site_option('woocommerce_stc_dhl_enable_legacy_soap');
delete_option('woocommerce_bacs_accounts');
delete_site_option('woocommerce_bacs_accounts');
delete_option('woocommerce_shiptastic_dhl_enable_legacy_soap');
delete_site_option('woocommerce_shiptastic_dhl_enable_legacy_soap');
delete_option('woocommerce_checkout_address_2_field');
delete_site_option('woocommerce_checkout_address_2_field');

// Delete Transients
delete_transient('_wc_stc_dhl_im_products_refresh_error');
delete_site_transient('_wc_stc_dhl_im_products_refresh_error');
delete_transient('_wc_stc_dhl_im_page_formats_refresh_error');
delete_site_transient('_wc_stc_dhl_im_page_formats_refresh_error');
delete_transient('wc_stc_dhl_portokasse_balance');
delete_site_transient('wc_stc_dhl_portokasse_balance');
delete_transient('wc_stc_dhl_im_current_page_formats');
delete_site_transient('wc_stc_dhl_im_current_page_formats');
delete_transient('woocommerce_stc_dhl_paket_api_access_token');
delete_site_transient('woocommerce_stc_dhl_paket_api_access_token');
delete_transient('wc_stc_dhl_im_products_expire');
delete_site_transient('wc_stc_dhl_im_products_expire');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pr_shipment_dhl_label_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pr_shipment_dhl_label_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pr_shipment_dhl_label_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pr_shipment_dhl_label_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_dhl_postnumber' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_dhl_postnumber' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_dhl_postnumber' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_dhl_postnumber' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_parcelshop_post_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_parcelshop_post_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_parcelshop_post_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_parcelshop_post_number' ) );

