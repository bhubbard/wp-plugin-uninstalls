<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fc_load_unminified_assets');
delete_site_option('fc_load_unminified_assets');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_plugin_activation_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_db_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_show_db_update_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_gzdp_checkout_enable');
delete_site_option('woocommerce_gzdp_checkout_enable');
delete_option('fc_plugin_activation_time');
delete_site_option('fc_plugin_activation_time');
delete_option('awdp_disable_discount');
delete_site_option('awdp_disable_discount');
delete_option('awdp_fee_label');
delete_site_option('awdp_fee_label');
delete_option('woocommerce_dintero_checkout_settings');
delete_site_option('woocommerce_dintero_checkout_settings');
delete_option('elementor_woocommerce_purchase_summary_page_id');
delete_site_option('elementor_woocommerce_purchase_summary_page_id');
delete_option('woocommerce_eh_paypal_express_settings');
delete_site_option('woocommerce_eh_paypal_express_settings');
delete_option('generate_menu_plus_settings');
delete_site_option('generate_menu_plus_settings');
delete_option('vp_woo_pont_custom_button_label');
delete_site_option('vp_woo_pont_custom_button_label');
delete_option('kt_woo_extras');
delete_site_option('kt_woo_extras');
delete_option('woocommerce_payplus-payment-gateway_settings');
delete_site_option('woocommerce_payplus-payment-gateway_settings');
delete_option('seur_2shop_custom_name_field');
delete_site_option('seur_2shop_custom_name_field');
delete_option('seur_classic_int_2shop_custom_name_field');
delete_site_option('seur_classic_int_2shop_custom_name_field');
delete_option('szbd_precise_address');
delete_site_option('szbd_precise_address');
delete_option('szbd_map_placement');
delete_site_option('szbd_map_placement');
delete_option('woocommerce_gzdp_enable_vat_check');
delete_site_option('woocommerce_gzdp_enable_vat_check');
delete_option('woocommerce_sf_add_company_billing_fields_id');
delete_site_option('woocommerce_sf_add_company_billing_fields_id');
delete_option('woocommerce_sf_add_company_billing_fields_vat');
delete_site_option('woocommerce_sf_add_company_billing_fields_vat');
delete_option('woocommerce_sf_add_company_billing_fields_tax');
delete_site_option('woocommerce_sf_add_company_billing_fields_tax');
delete_option('generate_settings');
delete_site_option('generate_settings');
delete_option('alt_bg_color');
delete_site_option('alt_bg_color');
delete_option('section_divide_color');
delete_site_option('section_divide_color');
delete_option('secondary_accent_color');
delete_site_option('secondary_accent_color');
delete_option('secondary_accent_alt_color');
delete_site_option('secondary_accent_alt_color');
delete_option('body_color');
delete_site_option('body_color');
delete_option('accent_color');
delete_site_option('accent_color');
delete_option('sf_neighborhood_options');
delete_site_option('sf_neighborhood_options');
delete_option('woocommerce_securesubmit_settings');
delete_site_option('woocommerce_securesubmit_settings');
delete_option('fc_debug_mode');
delete_site_option('fc_debug_mode');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sm_tooltip_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sm_tooltip_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sm_tooltip_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sm_tooltip_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sm_estimation_delivery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sm_estimation_delivery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sm_estimation_delivery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sm_estimation_delivery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'phone_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'phone_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'phone_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'phone_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mfn-post-custom-layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mfn-post-custom-layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mfn-post-custom-layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mfn-post-custom-layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mfn-post-sticky-header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mfn-post-sticky-header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mfn-post-sticky-header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mfn-post-sticky-header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_suki_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_suki_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_suki_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_suki_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'suki_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'suki_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'suki_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'suki_page_settings' ) );

