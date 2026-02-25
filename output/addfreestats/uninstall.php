<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('afs_analytics_oauth_state');
delete_site_option('afs_analytics_oauth_state');
delete_option('afsa_db_schema_version');
delete_site_option('afsa_db_schema_version');
delete_option('afsa_paa_rc');
delete_site_option('afsa_paa_rc');
delete_option('afs_account');
delete_site_option('afs_account');
delete_option('afs_accesskey');
delete_site_option('afs_accesskey');
delete_option('afs_admin_pages_tracking');
delete_site_option('afs_admin_pages_tracking');
delete_option('afs_self_visits_hidden');
delete_site_option('afs_self_visits_hidden');
delete_option('afs_user_logged_tracking');
delete_site_option('afs_user_logged_tracking');
delete_option('afs_udisplay_admin_summary');
delete_site_option('afs_udisplay_admin_summary');
delete_option('afs_gravatar_profile_enabled');
delete_site_option('afs_gravatar_profile_enabled');
delete_option('afs_cookie_setting');
delete_site_option('afs_cookie_setting');
delete_option('afs_ip_setting');
delete_site_option('afs_ip_setting');
delete_option('afs_user_consent');
delete_site_option('afs_user_consent');
delete_option('afs_localization_setting');
delete_site_option('afs_localization_setting');
delete_option('afsa_settings_main');
delete_site_option('afsa_settings_main');
delete_option('afsa_settings_privacy');
delete_site_option('afsa_settings_privacy');
delete_option('afsa_settings_autotrack');
delete_site_option('afsa_settings_autotrack');
delete_option('afsa_settings_woo');
delete_site_option('afsa_settings_woo');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'afstrackername' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'afstrackername' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'afstrackername' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'afstrackername' ) );

