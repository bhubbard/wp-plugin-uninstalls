<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('affilizz_api_key');
delete_site_option('affilizz_api_key');
delete_option('affilizz_organization');
delete_site_option('affilizz_organization');
delete_option('affilizz_media');
delete_site_option('affilizz_media');
delete_option('get_api_country_codes');
delete_site_option('get_api_country_codes');
delete_option('affilizz_channel');
delete_site_option('affilizz_channel');
delete_option('affilizz_javascript_debug_mode');
delete_site_option('affilizz_javascript_debug_mode');
delete_option('affilizz_proxy_uuid');
delete_site_option('affilizz_proxy_uuid');
delete_option('affilizz_api_country_code');
delete_site_option('affilizz_api_country_code');
delete_option('affilizz_javascript_analytics');
delete_site_option('affilizz_javascript_analytics');
delete_option('affilizz_plugin_version');
delete_site_option('affilizz_plugin_version');
delete_option('affilizz_organization_label');
delete_site_option('affilizz_organization_label');
delete_option('affilizz_media_label');
delete_site_option('affilizz_media_label');
delete_option('affilizz_channel_label');
delete_site_option('affilizz_channel_label');
delete_option('affilizz_rendering_mode');
delete_site_option('affilizz_rendering_mode');
delete_option('affilizz_disable_javascript');
delete_site_option('affilizz_disable_javascript');
delete_option('affilizz_selective_enqueue');
delete_site_option('affilizz_selective_enqueue');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_affilizz_publication_%', '_site_transient_affilizz_publication_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('affilizz_should_display_install_wizard');
delete_site_transient('affilizz_should_display_install_wizard');
delete_transient('affilizz_missing_channel');
delete_site_transient('affilizz_missing_channel');
delete_transient('affilizz_missing_media');
delete_site_transient('affilizz_missing_media');

// Clear Cron Jobs
wp_clear_scheduled_hook('affilizz_hourly_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'affilizz_publication_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'affilizz_publication_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'affilizz_publication_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'affilizz_publication_id' ) );

