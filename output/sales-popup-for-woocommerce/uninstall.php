<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wts_names_use');
delete_site_option('_wts_names_use');
delete_option('_wts_name_default');
delete_site_option('_wts_name_default');
delete_option('_wts_fake');
delete_site_option('_wts_fake');
delete_option('_wts_show_price');
delete_site_option('_wts_show_price');
delete_option('_wcs_position');
delete_site_option('_wcs_position');
delete_option('_wts_mobile');
delete_site_option('_wts_mobile');
delete_option('_wts_user_logged');
delete_site_option('_wts_user_logged');
delete_option('_wts_exception_urls');
delete_site_option('_wts_exception_urls');
delete_option('_wts_position');
delete_site_option('_wts_position');
delete_option('_wts_effect');
delete_site_option('_wts_effect');
delete_option('_wts_effect_delay');
delete_site_option('_wts_effect_delay');
delete_option('_wts_effect_duration');
delete_site_option('_wts_effect_duration');
delete_option('_wts_timeout_limit');
delete_site_option('_wts_timeout_limit');
delete_option('_wts_time_delay');
delete_site_option('_wts_time_delay');
delete_option('wts-newsletter');
delete_site_option('wts-newsletter');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wts_shows' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wts_shows' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wts_shows' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wts_shows' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wts_product_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wts_product_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wts_product_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wts_product_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wts_clics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wts_clics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wts_clics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wts_clics' ) );

