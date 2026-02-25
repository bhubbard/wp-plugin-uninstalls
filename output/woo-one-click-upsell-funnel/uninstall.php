<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wocuf_lite_migration_status');
delete_site_option('wocuf_lite_migration_status');
delete_option('wps_upsell_lite_offer_post_ids');
delete_site_option('wps_upsell_lite_offer_post_ids');
delete_option('wps_wocuf_funnels_list');
delete_site_option('wps_wocuf_funnels_list');
delete_option('wps_wgm_notify_new_banner_id');
delete_site_option('wps_wgm_notify_new_banner_id');
delete_option('wps_wgm_notify_new_banner_image');
delete_site_option('wps_wgm_notify_new_banner_image');
delete_option('wps_wgm_notify_new_banner_url');
delete_site_option('wps_wgm_notify_new_banner_url');
delete_option('wps_wgm_notify_hide_baneer_notification');
delete_site_option('wps_wgm_notify_hide_baneer_notification');
delete_option('wps_wocuf_enable_plugin');
delete_site_option('wps_wocuf_enable_plugin');
delete_option('wps_upsell_lite_global_options');
delete_site_option('wps_upsell_lite_global_options');
delete_option('wps_wocuf_store_checkout_fields_billing_data');
delete_site_option('wps_wocuf_store_checkout_fields_billing_data');
delete_option('wps_wocuf_store_checkout_fields_shipping_data');
delete_site_option('wps_wocuf_store_checkout_fields_shipping_data');
delete_option('wps_wocuf_store_checkout_basic_fields_shipping_data');
delete_site_option('wps_wocuf_store_checkout_basic_fields_shipping_data');
delete_option('wps_wocuf_store_checkout_basic_fields_billing_data');
delete_site_option('wps_wocuf_store_checkout_basic_fields_billing_data');
delete_option('wps_upsell_analytics_configuration');
delete_site_option('wps_upsell_analytics_configuration');
delete_option('wps_wocuf_pro_funnel_default_offer_page');
delete_site_option('wps_wocuf_pro_funnel_default_offer_page');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_turn_off_automatic_payments' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('onboarding-data-sent');
delete_site_option('onboarding-data-sent');
delete_option('onboarding-data-skipped');
delete_site_option('onboarding-data-skipped');
delete_option('wps_wocuf_pro_buy_text');
delete_site_option('wps_wocuf_pro_buy_text');
delete_option('wps_wocuf_pro_no_text');
delete_site_option('wps_wocuf_pro_no_text');
delete_option('wps_wocuf_pro_before_offer_price_text');
delete_site_option('wps_wocuf_pro_before_offer_price_text');
delete_option('wps_wocuf_pro_buy_button_color');
delete_site_option('wps_wocuf_pro_buy_button_color');
delete_option('wps_wocuf_pro_thanks_button_color');
delete_site_option('wps_wocuf_pro_thanks_button_color');
delete_option('wps_wocuf_pro_offer_banner_text');
delete_site_option('wps_wocuf_pro_offer_banner_text');
delete_option('wps_wocuf_pro_no_offer_text');
delete_site_option('wps_wocuf_pro_no_offer_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wps_mmcsfw_symbol_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('mwb_wocuf_pro_license_key');
delete_site_option('mwb_wocuf_pro_license_key');
delete_option('mwb_wocuf_plugin_update');
delete_site_option('mwb_wocuf_plugin_update');
delete_option('wps_wocuf_pro_license_key');
delete_site_option('wps_wocuf_pro_license_key');
delete_option('mwb_wocuf_pro_activated_timestamp');
delete_site_option('mwb_wocuf_pro_activated_timestamp');
delete_option('mwb_wocuf_pro_license_check');
delete_site_option('mwb_wocuf_pro_license_check');
delete_option('wps_wocuf_pro_activated_timestamp');
delete_site_option('wps_wocuf_pro_activated_timestamp');
delete_option('wps_wocuf_pro_license_check');
delete_site_option('wps_wocuf_pro_license_check');

// Delete Transients
delete_transient('wps_upsell_elementor_inactive_notice');
delete_site_transient('wps_upsell_elementor_inactive_notice');
delete_transient('wps_upsell_default_settings_tab');
delete_site_transient('wps_upsell_default_settings_tab');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('wps_wgm_check_for_notification_update');
wp_clear_scheduled_hook('wps_wocuf_lite_order_cron_schedule');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'divi_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'divi_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'divi_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'divi_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wps_upsell_funnel_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wps_upsell_funnel_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wps_upsell_funnel_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wps_upsell_funnel_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ct_builder_shortcodes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ct_builder_shortcodes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ct_builder_shortcodes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ct_builder_shortcodes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wps_upsell_simple_shipping_product_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wps_upsell_simple_shipping_product_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wps_upsell_simple_shipping_product_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wps_upsell_simple_shipping_product_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_et_pb_page_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_et_pb_page_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_et_pb_page_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_et_pb_page_layout' ) );

