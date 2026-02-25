<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('diskusijam_api_page_key');
delete_site_option('diskusijam_api_page_key');
delete_option('diskusijam_api_user_key');
delete_site_option('diskusijam_api_user_key');
delete_option('diskusijam_profile_id');
delete_site_option('diskusijam_profile_id');
delete_option('diskusijam_page_id');
delete_site_option('diskusijam_page_id');
delete_option('diskusijam_comment_sync');
delete_site_option('diskusijam_comment_sync');
delete_option('diskusijam_lang');
delete_site_option('diskusijam_lang');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'diskusijam_comment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'diskusijam_comment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'diskusijam_comment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'diskusijam_comment' ) );

