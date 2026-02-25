<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quarkcode_enable_gallery');
delete_site_option('quarkcode_enable_gallery');
delete_option('quarkcode_max_images_session');
delete_site_option('quarkcode_max_images_session');
delete_option('quarkcode_enable_continuous_editing');
delete_site_option('quarkcode_enable_continuous_editing');
delete_option('quarkcode_primary_color');
delete_site_option('quarkcode_primary_color');
delete_option('quarkcode_secondary_color');
delete_site_option('quarkcode_secondary_color');
delete_option('quarkcode_button_color');
delete_site_option('quarkcode_button_color');
delete_option('quarkcode_text_color');
delete_site_option('quarkcode_text_color');
delete_option('quarkcode_background_style');
delete_site_option('quarkcode_background_style');
delete_option('quarkcode_api_key');
delete_site_option('quarkcode_api_key');
delete_option('quarkcode_rate_limit_hour');
delete_site_option('quarkcode_rate_limit_hour');
delete_option('quarkcode_rate_limit_day');
delete_site_option('quarkcode_rate_limit_day');
delete_option('quarkcode_rate_limit_month');
delete_site_option('quarkcode_rate_limit_month');
delete_option('quarkcode_allowed_roles');
delete_site_option('quarkcode_allowed_roles');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_quarkcode_rate_hour_%', '_site_transient_quarkcode_rate_hour_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'quarkcode_dismissed_premium_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'quarkcode_dismissed_premium_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'quarkcode_dismissed_premium_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'quarkcode_dismissed_premium_notice' ) );

