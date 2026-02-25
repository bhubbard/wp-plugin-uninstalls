<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zhanzhangb_baidu_token');
delete_site_option('zhanzhangb_baidu_token');
delete_option('zhanzhangb_baidu_realtime_token');
delete_site_option('zhanzhangb_baidu_realtime_token');
delete_option('zhanzhangb_baidu_check');
delete_site_option('zhanzhangb_baidu_check');
delete_option('zhanzhangb_baidu_custom_post_types');
delete_site_option('zhanzhangb_baidu_custom_post_types');
delete_option('zhanzhangb_baidu_set_time');
delete_site_option('zhanzhangb_baidu_set_time');
delete_option('zhanzhangb_baidu_submit_number');
delete_site_option('zhanzhangb_baidu_submit_number');
delete_option('zhanzhangb_baidu_submissions');
delete_site_option('zhanzhangb_baidu_submissions');
delete_option('zhanzhangb_baidu_realtime_number');
delete_site_option('zhanzhangb_baidu_realtime_number');
delete_option('zhanzhangb_baidu_realtime_date');
delete_site_option('zhanzhangb_baidu_realtime_date');
delete_option('zhanzhangb_baidu_push');
delete_site_option('zhanzhangb_baidu_push');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_description' ) );

