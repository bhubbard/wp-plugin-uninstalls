<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pictaffil_paa_enabled');
delete_site_option('pictaffil_paa_enabled');
delete_option('pictaffil_paa_access_key');
delete_site_option('pictaffil_paa_access_key');
delete_option('pictaffil_paa_secret_key');
delete_site_option('pictaffil_paa_secret_key');
delete_option('pictaffil_paa_partner_tag');
delete_site_option('pictaffil_paa_partner_tag');
delete_option('pictaffil_api_key');
delete_site_option('pictaffil_api_key');
delete_option('pictaffil_paa_region');
delete_site_option('pictaffil_paa_region');
delete_option('pictaffil_affiliate_id');
delete_site_option('pictaffil_affiliate_id');
delete_option('pictaffil_settings');
delete_site_option('pictaffil_settings');
delete_option('pictaffil_card_settings');
delete_site_option('pictaffil_card_settings');
delete_option('pictaffil_search_method');
delete_site_option('pictaffil_search_method');
delete_option('pictaffil_history');
delete_site_option('pictaffil_history');
delete_option('pictaffil_version');
delete_site_option('pictaffil_version');
delete_option('pictaffil_installed');
delete_site_option('pictaffil_installed');
delete_option('pictaffil_error_logs');
delete_site_option('pictaffil_error_logs');
delete_option('pictaffil_amazon_search_type');
delete_site_option('pictaffil_amazon_search_type');
delete_option('pictaffil_amazon_access_key');
delete_site_option('pictaffil_amazon_access_key');
delete_option('pictaffil_amazon_secret_key');
delete_site_option('pictaffil_amazon_secret_key');
delete_option('pictaffil_integration_options');
delete_site_option('pictaffil_integration_options');
delete_option('pictaffil_auto_format_links');
delete_site_option('pictaffil_auto_format_links');
delete_option('pictaffil_db_version');
delete_site_option('pictaffil_db_version');

// Delete Transients
delete_transient('pictaffil_paa_credentials_valid');
delete_site_transient('pictaffil_paa_credentials_valid');
delete_transient('pictaffil_search_stats_all');
delete_site_transient('pictaffil_search_stats_all');
delete_transient('pictaffil_search_stats_day');
delete_site_transient('pictaffil_search_stats_day');
delete_transient('pictaffil_search_stats_week');
delete_site_transient('pictaffil_search_stats_week');
delete_transient('pictaffil_search_stats_month');
delete_site_transient('pictaffil_search_stats_month');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pictaffil_debug_%', '_site_transient_pictaffil_debug_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('pictaffil_api_key_verified');
delete_site_transient('pictaffil_api_key_verified');
delete_transient('pictaffil_account_info');
delete_site_transient('pictaffil_account_info');
delete_transient('pictaffil_last_error');
delete_site_transient('pictaffil_last_error');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pictaffil_carousel_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pictaffil_carousel_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pictaffil_carousel_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pictaffil_carousel_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pictaffil_saved_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pictaffil_saved_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pictaffil_saved_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pictaffil_saved_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

