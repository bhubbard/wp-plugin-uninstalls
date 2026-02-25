<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('social_share_button_version');
delete_site_option('social_share_button_version');
delete_option('social_share_button_migrate_2_1_1');
delete_site_option('social_share_button_migrate_2_1_1');
delete_option('social_share_button_migrate_2_1_6');
delete_site_option('social_share_button_migrate_2_1_6');
delete_option('social_share_button_settings');
delete_site_option('social_share_button_settings');
delete_option('social_share_button_tc_text');
delete_site_option('social_share_button_tc_text');
delete_option('social_share_button_tc_themes');
delete_site_option('social_share_button_tc_themes');
delete_option('social_share_button_sites');
delete_site_option('social_share_button_sites');
delete_option('social_share_button_total');
delete_site_option('social_share_button_total');
delete_option('social_share_button_theme');
delete_site_option('social_share_button_theme');
delete_option('social_share_button_more_display');
delete_site_option('social_share_button_more_display');
delete_option('social_share_button_display_total_count');
delete_site_option('social_share_button_display_total_count');
delete_option('social_share_button_display');
delete_site_option('social_share_button_display');
delete_option('social_share_button_count_format');
delete_site_option('social_share_button_count_format');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'social_share_button_share_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'social_share_button_share_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'social_share_button_share_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'social_share_button_share_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ssb_post_sites' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ssb_post_sites' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ssb_post_sites' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ssb_post_sites' ) );

