<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wctofb_api');
delete_site_option('wctofb_api');
delete_option('wctofb_apikey_success');
delete_site_option('wctofb_apikey_success');
delete_option('wctofb_runonce');
delete_site_option('wctofb_runonce');
delete_option('wctofb_pg_version');
delete_site_option('wctofb_pg_version');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('wctofb_api_success');
delete_site_option('wctofb_api_success');

// Clear Cron Jobs
wp_clear_scheduled_hook('wctofbcronjob');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );

