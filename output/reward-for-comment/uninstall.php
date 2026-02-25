<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rfcx_satoshi_balance');
delete_site_option('rfcx_satoshi_balance');
delete_option('rfcx_min_satoshi');
delete_site_option('rfcx_min_satoshi');
delete_option('rfcx_max_satoshi');
delete_site_option('rfcx_max_satoshi');
delete_option('rfcx_notify_empty');
delete_site_option('rfcx_notify_empty');
delete_option('rfcx_notify_reward');
delete_site_option('rfcx_notify_reward');
delete_option('rfcx_satoshi_api_key');
delete_site_option('rfcx_satoshi_api_key');
delete_option('rfcx_system_ready');
delete_site_option('rfcx_system_ready');
delete_option('rfcx_txt_satoshi');
delete_site_option('rfcx_txt_satoshi');
delete_option('rfcx_txt_chars');
delete_site_option('rfcx_txt_chars');
delete_option('rfcx_extra_satoshi');
delete_site_option('rfcx_extra_satoshi');
delete_option('rfcx_extra_words');
delete_site_option('rfcx_extra_words');
delete_option('site_admins');
delete_site_option('site_admins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'satoshi_reward' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'satoshi_reward' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'satoshi_reward' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'satoshi_reward' ) );

