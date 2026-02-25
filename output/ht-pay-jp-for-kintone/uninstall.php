<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ht_pay_jp_for_kintone_test_secret_key');
delete_site_option('ht_pay_jp_for_kintone_test_secret_key');
delete_option('ht_pay_jp_for_kintone_test_public_key');
delete_site_option('ht_pay_jp_for_kintone_test_public_key');
delete_option('ht_pay_jp_for_kintone_live_secret_key');
delete_site_option('ht_pay_jp_for_kintone_live_secret_key');
delete_option('ht_pay_jp_for_kintone_live_public_key');
delete_site_option('ht_pay_jp_for_kintone_live_public_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ht_payjpforkintone_setting_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ht_payjpforkintone_setting_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ht_payjpforkintone_setting_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ht_payjpforkintone_setting_data' ) );

