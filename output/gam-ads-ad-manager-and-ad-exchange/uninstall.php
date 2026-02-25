<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gam_secret_iv');
delete_site_option('gam_secret_iv');
delete_option('gam_web_client_secret');
delete_site_option('gam_web_client_secret');
delete_option('gam_web_client_id');
delete_site_option('gam_web_client_id');
delete_option('gam_redirect_uri');
delete_site_option('gam_redirect_uri');
delete_option('gam_ads_ad_manager_and_ad_exchange_tokens');
delete_site_option('gam_ads_ad_manager_and_ad_exchange_tokens');
delete_option('gam_ads_ad_manager_and_ad_exchange_networks');
delete_site_option('gam_ads_ad_manager_and_ad_exchange_networks');
delete_option('gam_ads_ad_manager_and_ad_exchange_network_code');
delete_site_option('gam_ads_ad_manager_and_ad_exchange_network_code');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_adunit' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('gamadsmbai_lbl_credit');
delete_site_option('gamadsmbai_lbl_credit');
delete_option('gamadsmbai_lbl_advertisement');
delete_site_option('gamadsmbai_lbl_advertisement');
delete_option('save_path');
delete_site_option('save_path');
delete_option('gam_using_default_config');
delete_site_option('gam_using_default_config');
delete_option('gamadsmbai_license_key');
delete_site_option('gamadsmbai_license_key');
delete_option('gamadsmbai_license_token');
delete_site_option('gamadsmbai_license_token');
delete_option('gamadsmbai_activated_at');
delete_site_option('gamadsmbai_activated_at');
delete_option('gamadsmbai_expires_at');
delete_site_option('gamadsmbai_expires_at');
delete_option('gamadsmbai_license_plan');
delete_site_option('gamadsmbai_license_plan');
delete_option('gamadsmbai_license_status');
delete_site_option('gamadsmbai_license_status');
delete_option('gamadsmbai_review_dismissed');
delete_site_option('gamadsmbai_review_dismissed');

// Clear Cron Jobs
wp_clear_scheduled_hook('gam_ads_ad_manager_and_ad_exchange_refresh_tokens_event');

