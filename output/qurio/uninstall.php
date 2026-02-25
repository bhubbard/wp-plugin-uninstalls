<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qurio_api_key');
delete_site_option('qurio_api_key');
delete_option('qurio_api_status');
delete_site_option('qurio_api_status');
delete_option('qurio_appearance_overlay_color');
delete_site_option('qurio_appearance_overlay_color');
delete_option('qurio_appearance_overlay_opacity');
delete_site_option('qurio_appearance_overlay_opacity');
delete_option('qurio_appearance_popup_delay');
delete_site_option('qurio_appearance_popup_delay');
delete_option('qurio_appearance_inline_position');
delete_site_option('qurio_appearance_inline_position');
delete_option('qurio_overview_campaign_data');
delete_site_option('qurio_overview_campaign_data');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qurio_campaign_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qurio_campaign_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qurio_campaign_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qurio_campaign_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qurio_connect_campaign_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qurio_connect_campaign_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qurio_connect_campaign_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qurio_connect_campaign_style' ) );

