<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acwp_skiplinks');
delete_site_option('acwp_skiplinks');
delete_option('acwp_skiplinks_body_open');
delete_site_option('acwp_skiplinks_body_open');
delete_option('acwp_skiplinks_turnsides');
delete_site_option('acwp_skiplinks_turnsides');
delete_option('acwp_skiplinks_noanimation');
delete_site_option('acwp_skiplinks_noanimation');
delete_option('acwp_skiplinks_noshadows');
delete_site_option('acwp_skiplinks_noshadows');
delete_option('acwp_skiplinks_header_label');
delete_site_option('acwp_skiplinks_header_label');
delete_option('acwp_skiplinks_header_id');
delete_site_option('acwp_skiplinks_header_id');
delete_option('acwp_skiplinks_footer_label');
delete_site_option('acwp_skiplinks_footer_label');
delete_option('acwp_skiplinks_footer_id');
delete_site_option('acwp_skiplinks_footer_id');
delete_option('acwp_skiplinks_content_label');
delete_site_option('acwp_skiplinks_content_label');
delete_option('acwp_skiplinks_content_id');
delete_site_option('acwp_skiplinks_content_id');
delete_option('acwp_skiplinks_bg');
delete_site_option('acwp_skiplinks_bg');
delete_option('acwp_skiplinks_txt');
delete_site_option('acwp_skiplinks_txt');
delete_option('acwp_skiplinks_nometa');
delete_site_option('acwp_skiplinks_nometa');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'acwp_skiplinks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'acwp_skiplinks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'acwp_skiplinks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'acwp_skiplinks' ) );

