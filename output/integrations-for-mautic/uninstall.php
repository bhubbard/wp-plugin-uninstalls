<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('intmau_mautic_base_url');
delete_site_option('intmau_mautic_base_url');
delete_option('intmau_mautic_client_id');
delete_site_option('intmau_mautic_client_id');
delete_option('intmau_mautic_client_secret');
delete_site_option('intmau_mautic_client_secret');
delete_option('intmau_mautic_tracking_enabled');
delete_site_option('intmau_mautic_tracking_enabled');
delete_option('intmau_mautic_access_token');
delete_site_option('intmau_mautic_access_token');
delete_option('intmau_woocommerce_enable_newsletter');
delete_site_option('intmau_woocommerce_enable_newsletter');
delete_option('intmau_woocommerce_newsletter_tag');
delete_site_option('intmau_woocommerce_newsletter_tag');
delete_option('intmau_woocommerce_newsletter_message');
delete_site_option('intmau_woocommerce_newsletter_message');
delete_option('intmau_mautic_refresh_token');
delete_site_option('intmau_mautic_refresh_token');
delete_option('intmau_mautic_token_expires');
delete_site_option('intmau_mautic_token_expires');
delete_option('intmau_module_elementor');
delete_site_option('intmau_module_elementor');
delete_option('intmau_module_woocommerce');
delete_site_option('intmau_module_woocommerce');

// Clear Cron Jobs
wp_clear_scheduled_hook('intmau_refresh_mautic_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'accepts_marketing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'accepts_marketing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'accepts_marketing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'accepts_marketing' ) );

