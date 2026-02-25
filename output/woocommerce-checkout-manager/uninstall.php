<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jetpack_protect_active');
delete_site_option('jetpack_protect_active');
delete_option('jetpack_offline_mode');
delete_site_option('jetpack_offline_mode');
delete_option('wpcom_public_coming_soon');
delete_site_option('wpcom_public_coming_soon');
delete_option('wooccm_advanced_custom_css');
delete_site_option('wooccm_advanced_custom_css');
delete_option('wccs_settings');
delete_site_option('wccs_settings');
delete_option('wooccm_checkout_force_shipping_address');
delete_site_option('wooccm_checkout_force_shipping_address');
delete_option('wooccm_checkout_force_create_account');
delete_site_option('wooccm_checkout_force_create_account');
delete_option('wooccm_checkout_order_notes_label');
delete_site_option('wooccm_checkout_order_notes_label');
delete_option('wooccm_checkout_order_notes_placeholder');
delete_site_option('wooccm_checkout_order_notes_placeholder');
delete_option('wooccm_checkout_remove_order_notes');
delete_site_option('wooccm_checkout_remove_order_notes');
delete_option('wooccm_checkout_checkout_form_before_message');
delete_site_option('wooccm_checkout_checkout_form_before_message');
delete_option('wooccm_checkout_checkout_form_after_message');
delete_site_option('wooccm_checkout_checkout_form_after_message');
delete_option('wooccm_order_upload_files');
delete_site_option('wooccm_order_upload_files');
delete_option('wooccm_order_upload_files_order_status');
delete_site_option('wooccm_order_upload_files_order_status');
delete_option('wooccm_order_custom_fields');
delete_site_option('wooccm_order_custom_fields');
delete_option('wooccm_order_custom_fields_status');
delete_site_option('wooccm_order_custom_fields_status');
delete_option('wooccm_order_upload_files_title');
delete_site_option('wooccm_order_upload_files_title');
delete_option('wooccm_additional_position');
delete_site_option('wooccm_additional_position');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('wooccm_order_custom_fields_title');
delete_site_option('wooccm_order_custom_fields_title');

// Delete Transients
delete_transient('jetpack_is_single_user');
delete_site_transient('jetpack_is_single_user');
delete_transient('quadlayers_news_feed');
delete_site_transient('quadlayers_news_feed');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ql_plugin_feedback_%', '_site_transient_ql_plugin_feedback_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

