<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fleekcode_omnibus_settings');
delete_site_option('fleekcode_omnibus_settings');
delete_option('fleekcode_omnibus_enabled');
delete_site_option('fleekcode_omnibus_enabled');
delete_option('fleekcode_omnibus_text');
delete_site_option('fleekcode_omnibus_text');
delete_option('fleekcode_omnibus_display_location');
delete_site_option('fleekcode_omnibus_display_location');
delete_option('fleekcode_omnibus_price_position');
delete_site_option('fleekcode_omnibus_price_position');
delete_option('fleekcode_omnibus_days');
delete_site_option('fleekcode_omnibus_days');
delete_option('fleekcode_omnibus_min_price_display_mode');
delete_site_option('fleekcode_omnibus_min_price_display_mode');
delete_option('fleekcode_omnibus_display_method');
delete_site_option('fleekcode_omnibus_display_method');
delete_option('fleekcode_omnibus_version');
delete_site_option('fleekcode_omnibus_version');
delete_option('fleekcode_statistics_consent');
delete_site_option('fleekcode_statistics_consent');
delete_option('fleekcode_statistics_consent_time');
delete_site_option('fleekcode_statistics_consent_time');
delete_option('fleekcode_statistics_last_sent');
delete_site_option('fleekcode_statistics_last_sent');

// Delete Transients
delete_transient('fleekcode_omnibus_updated_variations');
delete_site_transient('fleekcode_omnibus_updated_variations');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fleekcode_hide_review_banner' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fleekcode_hide_review_banner' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fleekcode_hide_review_banner' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fleekcode_hide_review_banner' ) );

