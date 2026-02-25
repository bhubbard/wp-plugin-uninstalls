<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcmt_aisays_custom_language');
delete_site_option('wpcmt_aisays_custom_language');
delete_option('wpcmt_aisays_provider');
delete_site_option('wpcmt_aisays_provider');
delete_option('wpcmt_aisays_total_generations');
delete_site_option('wpcmt_aisays_total_generations');
delete_option('wpcmt_aisays_gemini_model');
delete_site_option('wpcmt_aisays_gemini_model');
delete_option('wpcmt_aisays_language');
delete_site_option('wpcmt_aisays_language');
delete_option('wpcmt_aisays_openai_model');
delete_site_option('wpcmt_aisays_openai_model');
delete_option('wpcmt_aisays_prompt_template');
delete_site_option('wpcmt_aisays_prompt_template');
delete_option('wpcmt_aisays_display_mode');
delete_site_option('wpcmt_aisays_display_mode');
delete_option('wpcmt_aisays_display_position');
delete_site_option('wpcmt_aisays_display_position');
delete_option('wpcmt_aisays_shortcode');
delete_site_option('wpcmt_aisays_shortcode');
delete_option('wpcmt_aisays_max_tokens');
delete_site_option('wpcmt_aisays_max_tokens');
delete_option('wpcmt_aisays_gemini_api_key');
delete_site_option('wpcmt_aisays_gemini_api_key');
delete_option('wpcmt_aisays_openai_api_key');
delete_site_option('wpcmt_aisays_openai_api_key');

// Delete Transients
delete_transient('wpcmt_aisays_daily_usage');
delete_site_transient('wpcmt_aisays_daily_usage');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpcmt_aisays_bulk_ids_%', '_site_transient_wpcmt_aisays_bulk_ids_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpcmt_aisays_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpcmt_aisays_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpcmt_aisays_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpcmt_aisays_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpcmt_aisays_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpcmt_aisays_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpcmt_aisays_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpcmt_aisays_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

