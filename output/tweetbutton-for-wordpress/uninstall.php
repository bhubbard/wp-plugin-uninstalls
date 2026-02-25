<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tb_via');
delete_site_option('tb_via');
delete_option('tb_hashtag');
delete_site_option('tb_hashtag');
delete_option('tb_lang');
delete_site_option('tb_lang');
delete_option('tb_related');
delete_site_option('tb_related');
delete_option('tb_related_accounts');
delete_site_option('tb_related_accounts');
delete_option('tb_style');
delete_site_option('tb_style');
delete_option('tb_where');
delete_site_option('tb_where');
delete_option('tb_display_page');
delete_site_option('tb_display_page');
delete_option('tb_display_front');
delete_site_option('tb_display_front');
delete_option('tb_display_rss');
delete_site_option('tb_display_rss');
delete_option('tb_rss_where');
delete_site_option('tb_rss_where');
delete_option('tb_ping');
delete_site_option('tb_ping');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tb_related' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tb_related' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tb_related' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tb_related' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'TweetButton' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'TweetButton' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'TweetButton' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'TweetButton' ) );

