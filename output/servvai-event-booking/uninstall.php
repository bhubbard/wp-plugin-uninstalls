<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('servv_currency');
delete_site_option('servv_currency');
delete_option('servv_pw_title');
delete_site_option('servv_pw_title');
delete_option('servv_pw_description');
delete_site_option('servv_pw_description');
delete_option('servv_pw_avatar');
delete_site_option('servv_pw_avatar');
delete_option('servv_shop_cards_settings');
delete_site_option('servv_shop_cards_settings');
delete_option('servv_n8n_event_created_active');
delete_site_option('servv_n8n_event_created_active');
delete_option('servv_n8n_event_created_url');
delete_site_option('servv_n8n_event_created_url');
delete_option('servv_n8n_event_created_method');
delete_site_option('servv_n8n_event_created_method');
delete_option('servv_n8n_event_created_secret');
delete_site_option('servv_n8n_event_created_secret');
delete_option('servv_n8n_new_booking_active');
delete_site_option('servv_n8n_new_booking_active');
delete_option('servv_n8n_new_booking_url');
delete_site_option('servv_n8n_new_booking_url');
delete_option('servv_n8n_new_booking_method');
delete_site_option('servv_n8n_new_booking_method');
delete_option('servv_n8n_new_booking_secret');
delete_site_option('servv_n8n_new_booking_secret');
delete_option('servv_n8n_canceled_booking_active');
delete_site_option('servv_n8n_canceled_booking_active');
delete_option('servv_n8n_canceled_booking_url');
delete_site_option('servv_n8n_canceled_booking_url');
delete_option('servv_n8n_canceled_booking_method');
delete_site_option('servv_n8n_canceled_booking_method');
delete_option('servv_n8n_canceled_booking_secret');
delete_site_option('servv_n8n_canceled_booking_secret');
delete_option('servv_stripe_account_id');
delete_site_option('servv_stripe_account_id');
delete_option('servv_stripe_public_key');
delete_site_option('servv_stripe_public_key');
delete_option('servv_plugin_secret_key');
delete_site_option('servv_plugin_secret_key');
delete_option('servv_plugin_uuid');
delete_site_option('servv_plugin_uuid');
delete_option('servv_n8n_cancelled_booking_active');
delete_site_option('servv_n8n_cancelled_booking_active');
delete_option('servv_n8n_cancelled_booking_url');
delete_site_option('servv_n8n_cancelled_booking_url');
delete_option('servv_n8n_cancelled_booking_method');
delete_site_option('servv_n8n_cancelled_booking_method');
delete_option('servv_n8n_cancelled_booking_secret');
delete_site_option('servv_n8n_cancelled_booking_secret');
delete_option('servv_install_status');
delete_site_option('servv_install_status');
delete_option('servv_plugin_settings');
delete_site_option('servv_plugin_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('servv_plugin_delayed_install');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'servv_event_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'servv_event_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'servv_event_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'servv_event_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'servv_event_quantities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'servv_event_quantities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'servv_event_quantities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'servv_event_quantities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'servv_event_location_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'servv_event_location_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'servv_event_location_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'servv_event_location_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'servv_event_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'servv_event_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'servv_event_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'servv_event_type' ) );

