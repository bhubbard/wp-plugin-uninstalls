<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('metrion_api_path_part_1');
delete_site_option('metrion_api_path_part_1');
delete_option('metrion_api_path_part_2');
delete_site_option('metrion_api_path_part_2');
delete_option('metrion_user_cookie_name');
delete_site_option('metrion_user_cookie_name');
delete_option('metrion_user_cookie_lifetime');
delete_site_option('metrion_user_cookie_lifetime');
delete_option('metrion_webhook_destination');
delete_site_option('metrion_webhook_destination');
delete_option('metrion_click_ids_cookie_name');
delete_site_option('metrion_click_ids_cookie_name');
delete_option('metrion_session_cookie_name');
delete_site_option('metrion_session_cookie_name');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('metrion_installation_id');
delete_site_option('metrion_installation_id');
delete_option('metrion_event_id_name');
delete_site_option('metrion_event_id_name');
delete_option('metrion_session_cookie_lifetime');
delete_site_option('metrion_session_cookie_lifetime');
delete_option('metrion_debug_mode');
delete_site_option('metrion_debug_mode');
delete_option('metrion_vat_included');
delete_site_option('metrion_vat_included');
delete_option('metrion_shipping_costs_included');
delete_site_option('metrion_shipping_costs_included');
delete_option('metrion_allow_marketing');
delete_site_option('metrion_allow_marketing');
delete_option('metrion_allow_pii');
delete_site_option('metrion_allow_pii');
delete_option('metrion_allow_uid');
delete_site_option('metrion_allow_uid');
delete_option('metrion_allow_sid');
delete_site_option('metrion_allow_sid');
delete_option('metrion_allow_cookie_placement_before_explicit_consent');
delete_site_option('metrion_allow_cookie_placement_before_explicit_consent');
delete_option('metrion_cmp_selection');
delete_site_option('metrion_cmp_selection');
delete_option('metrion_consent_cookie_name');
delete_site_option('metrion_consent_cookie_name');
delete_option('metrion_consent_floodgate_name');
delete_site_option('metrion_consent_floodgate_name');
delete_option('metrion_onetrust_marketing_code');
delete_site_option('metrion_onetrust_marketing_code');
delete_option('metrion_onetrust_analytics_code');
delete_site_option('metrion_onetrust_analytics_code');
delete_option('metrion_google_ads_syncs');
delete_site_option('metrion_google_ads_syncs');
delete_option('metrion_enforce_google_consent_mode');
delete_site_option('metrion_enforce_google_consent_mode');
delete_option('metrion_meta_ads_syncs');
delete_site_option('metrion_meta_ads_syncs');
delete_option('metrion_microsoft_ads_enable_tracking');
delete_site_option('metrion_microsoft_ads_enable_tracking');
delete_option('metrion_microsoft_ads_enforce_consent_mode');
delete_site_option('metrion_microsoft_ads_enforce_consent_mode');
delete_option('metrion_microsoft_ads_enable_dynamic_remarketing');
delete_site_option('metrion_microsoft_ads_enable_dynamic_remarketing');
delete_option('metrion_microsoft_ads_tag_id');
delete_site_option('metrion_microsoft_ads_tag_id');
delete_option('metrion_google_analytics_enable_tracking');
delete_site_option('metrion_google_analytics_enable_tracking');
delete_option('metrion_google_analytics_measurement_id');
delete_site_option('metrion_google_analytics_measurement_id');
delete_option('metrion_google_analytics_api_secret');
delete_site_option('metrion_google_analytics_api_secret');
delete_option('metrion_tiktok_ads_syncs');
delete_site_option('metrion_tiktok_ads_syncs');
delete_option('metrion_purchase_only_tracking');
delete_site_option('metrion_purchase_only_tracking');
delete_option('metrion_elementor_excluded_forms');
delete_site_option('metrion_elementor_excluded_forms');
delete_option('metrion_floodgate_name');
delete_site_option('metrion_floodgate_name');
delete_option('metrion_meta_test_event_code');
delete_site_option('metrion_meta_test_event_code');
delete_option('metrion_enable_elementor_form_tracking');
delete_site_option('metrion_enable_elementor_form_tracking');
delete_option('metrion_use_api_endpoints_to_load_js');
delete_site_option('metrion_use_api_endpoints_to_load_js');
delete_option('metrion_session_info_storage_name');
delete_site_option('metrion_session_info_storage_name');
delete_option('metrion_allow_pre_consent_pings');
delete_site_option('metrion_allow_pre_consent_pings');
delete_option('metrion_enable_block_detection');
delete_site_option('metrion_enable_block_detection');
delete_option('metrion_enable_myyounit_integration');
delete_site_option('metrion_enable_myyounit_integration');
delete_option('metrion_enable_woocommerce_tracking');
delete_site_option('metrion_enable_woocommerce_tracking');
delete_option('metrion_data_collection');
delete_site_option('metrion_data_collection');
delete_option('metrion_api_key');
delete_site_option('metrion_api_key');
delete_option('metrion_api_secret');
delete_site_option('metrion_api_secret');
delete_option('metrion_credentials_valid');
delete_site_option('metrion_credentials_valid');

// Clear Cron Jobs
wp_clear_scheduled_hook('metrion_refresh_credentials');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_metrion_tracking_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_metrion_tracking_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_metrion_tracking_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_metrion_tracking_sent' ) );

