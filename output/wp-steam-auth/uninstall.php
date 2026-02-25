<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsapSettings_steamAppFlush');
delete_site_option('wpsapSettings_steamAppFlush');
delete_option('wpsapOption_popupEnabled');
delete_site_option('wpsapOption_popupEnabled');
delete_option('wpsapSettings_apiKey');
delete_site_option('wpsapSettings_apiKey');
delete_option('wpsapSettings_logoutRedirect');
delete_site_option('wpsapSettings_logoutRedirect');
delete_option('wpsapSettings_loginRedirect');
delete_site_option('wpsapSettings_loginRedirect');
delete_option('wpsapSettings_logoutRedirectReferer');
delete_site_option('wpsapSettings_logoutRedirectReferer');
delete_option('wpsapSettings_loginRedirectReferer');
delete_site_option('wpsapSettings_loginRedirectReferer');
delete_option('wpsapOption_avatarUpload');
delete_site_option('wpsapOption_avatarUpload');
delete_option('wpsapOption_avatarEnabled');
delete_site_option('wpsapOption_avatarEnabled');
delete_option('wpsapSettings_steamAppUrl');
delete_site_option('wpsapSettings_steamAppUrl');
delete_option('wpsapSettings_steamAppLoginUrl');
delete_site_option('wpsapSettings_steamAppLoginUrl');
delete_option('wpsapSettings_steamAppSyncUrl');
delete_site_option('wpsapSettings_steamAppSyncUrl');
delete_option('wpsapSettings_steamAppLogoutUrl');
delete_site_option('wpsapSettings_steamAppLogoutUrl');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'steam_wp_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'steam_wp_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'steam_wp_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'steam_wp_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'steam_steamid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'steam_steamid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'steam_steamid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'steam_steamid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'steam_force_resync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'steam_force_resync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'steam_force_resync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'steam_force_resync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'steam_personaname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'steam_personaname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'steam_personaname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'steam_personaname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'steam_realname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'steam_realname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'steam_realname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'steam_realname' ) );

