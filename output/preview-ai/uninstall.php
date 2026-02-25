<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('preview_ai_api_key');
delete_site_option('preview_ai_api_key');
delete_option('preview_ai_needs_first_try');
delete_site_option('preview_ai_needs_first_try');
delete_option('preview_ai_needs_onboarding');
delete_site_option('preview_ai_needs_onboarding');
delete_option('preview_ai_enabled');
delete_site_option('preview_ai_enabled');
delete_option('preview_ai_max_previews_per_user_weekly');
delete_site_option('preview_ai_max_previews_per_user_weekly');
delete_option('preview_ai_analytics_enabled');
delete_site_option('preview_ai_analytics_enabled');
delete_option('preview_ai_display_mode');
delete_site_option('preview_ai_display_mode');
delete_option('preview_ai_button_text');
delete_site_option('preview_ai_button_text');
delete_option('preview_ai_button_icon');
delete_site_option('preview_ai_button_icon');
delete_option('preview_ai_button_position');
delete_site_option('preview_ai_button_position');
delete_option('preview_ai_button_shape');
delete_site_option('preview_ai_button_shape');
delete_option('preview_ai_button_height');
delete_site_option('preview_ai_button_height');
delete_option('preview_ai_button_full_width');
delete_site_option('preview_ai_button_full_width');
delete_option('preview_ai_accent_color');
delete_site_option('preview_ai_accent_color');
delete_option('preview_ai_store_compatibility');
delete_site_option('preview_ai_store_compatibility');
delete_option('preview_ai_activation_time');
delete_site_option('preview_ai_activation_time');
delete_option('preview_ai_api_endpoint');
delete_site_option('preview_ai_api_endpoint');
delete_option('astra-settings');
delete_site_option('astra-settings');
delete_option('generate_settings');
delete_site_option('generate_settings');
delete_option('et_divi_accent_color');
delete_site_option('et_divi_accent_color');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_preview_ai_bulk_result_%', '_site_transient_preview_ai_bulk_result_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('preview_ai_account_status');
delete_site_transient('preview_ai_account_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_preview_ai_image_analysis' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_preview_ai_image_analysis' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_preview_ai_image_analysis' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_preview_ai_image_analysis' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_preview_ai_supported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_preview_ai_supported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_preview_ai_supported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_preview_ai_supported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_preview_ai_recommended_subtype' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_preview_ai_recommended_subtype' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_preview_ai_recommended_subtype' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_preview_ai_recommended_subtype' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_preview_ai_garment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_preview_ai_garment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_preview_ai_garment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_preview_ai_garment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_preview_ai_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_preview_ai_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_preview_ai_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_preview_ai_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );

