<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('coblocks_date_installed');
delete_site_option('coblocks_date_installed');
delete_option('wpnux_export_data');
delete_site_option('wpnux_export_data');
delete_option('coblocks_google_recaptcha_site_key');
delete_site_option('coblocks_google_recaptcha_site_key');
delete_option('coblocks_google_recaptcha_secret_key');
delete_site_option('coblocks_google_recaptcha_secret_key');
delete_option('coblocks_google_maps_api_key');
delete_site_option('coblocks_google_maps_api_key');
delete_option('coblocks_site_design_controls_enabled');
delete_site_option('coblocks_site_design_controls_enabled');
delete_option('coblocks_site_content_controls_enabled');
delete_site_option('coblocks_site_content_controls_enabled');
delete_option('coblocks_layout_selector_controls_enabled');
delete_site_option('coblocks_layout_selector_controls_enabled');
delete_option('coblocks_custom_colors_controls_enabled');
delete_site_option('coblocks_custom_colors_controls_enabled');
delete_option('coblocks_gradient_presets_enabled');
delete_site_option('coblocks_gradient_presets_enabled');
delete_option('coblocks_color_panel_controls_enabled');
delete_site_option('coblocks_color_panel_controls_enabled');
delete_option('coblocks_typography_controls_enabled');
delete_site_option('coblocks_typography_controls_enabled');
delete_option('coblocks_animation_controls_enabled');
delete_site_option('coblocks_animation_controls_enabled');

// Delete Transients
delete_transient('coblocks_template_parts_query');
delete_site_transient('coblocks_template_parts_query');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_coblocks_accordion_ie_support' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_coblocks_accordion_ie_support' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_coblocks_accordion_ie_support' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_coblocks_accordion_ie_support' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_coblocks_attr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_coblocks_attr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_coblocks_attr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_coblocks_attr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_coblocks_dimensions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_coblocks_dimensions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_coblocks_dimensions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_coblocks_dimensions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_coblocks_responsive_height' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_coblocks_responsive_height' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_coblocks_responsive_height' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_coblocks_responsive_height' ) );

