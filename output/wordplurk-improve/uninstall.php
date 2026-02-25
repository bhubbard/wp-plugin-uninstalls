<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wordplurk_template');
delete_site_option('wordplurk_template');
delete_option('wordplurk_suapi_user');
delete_site_option('wordplurk_suapi_user');
delete_option('wordplurk_suapi_key');
delete_site_option('wordplurk_suapi_key');
delete_option('wordplurk_login');
delete_site_option('wordplurk_login');
delete_option('wordplurk_shorturl_en');
delete_site_option('wordplurk_shorturl_en');
delete_option('wordplurk_qualifier');
delete_site_option('wordplurk_qualifier');
delete_option('wordplurk_language_set');
delete_site_option('wordplurk_language_set');
delete_option('wordplurk_Plurk2tw_en');
delete_site_option('wordplurk_Plurk2tw_en');
delete_option('wordplurk_version');
delete_site_option('wordplurk_version');
delete_option('wordplurk_username');
delete_site_option('wordplurk_username');
delete_option('wordplurk_password');
delete_site_option('wordplurk_password');
delete_option('wordplurk_apikey');
delete_site_option('wordplurk_apikey');
delete_option('wordplurk_cookie_exp_time');
delete_site_option('wordplurk_cookie_exp_time');
delete_option('wordplurk_cookie');
delete_site_option('wordplurk_cookie');
delete_option('wordplurk_cmrt');
delete_site_option('wordplurk_cmrt');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'has_been_plurked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'has_been_plurked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'has_been_plurked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'has_been_plurked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wordplurk_plurkornot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wordplurk_plurkornot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wordplurk_plurkornot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wordplurk_plurkornot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'plurk_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'plurk_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'plurk_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'plurk_id' ) );

