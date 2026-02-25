<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('beedia_qiniu_access_key');
delete_site_option('beedia_qiniu_access_key');
delete_option('beedia_qiniu_secret_key');
delete_site_option('beedia_qiniu_secret_key');
delete_option('beedia_qiniu_bucket_name');
delete_site_option('beedia_qiniu_bucket_name');
delete_option('beedia_qiniu_switch');
delete_site_option('beedia_qiniu_switch');
delete_option('beedia_qiniu_host');
delete_site_option('beedia_qiniu_host');
delete_option('beedia_when_delete_post_image_rule');
delete_site_option('beedia_when_delete_post_image_rule');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qiniu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qiniu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qiniu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qiniu' ) );

