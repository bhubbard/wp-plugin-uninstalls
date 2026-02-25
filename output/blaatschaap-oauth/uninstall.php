<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('login_page');
delete_site_option('login_page');
delete_option('register_page');
delete_site_option('register_page');
delete_option('link_page');
delete_site_option('link_page');
delete_option('logout_frontpage');
delete_site_option('logout_frontpage');
delete_option('bsauth_custom_button');
delete_site_option('bsauth_custom_button');
delete_option('bs_auth_hide_local');
delete_site_option('bs_auth_hide_local');
delete_option('bs_auth_signup_user_url');
delete_site_option('bs_auth_signup_user_url');
delete_option('bs_auth_signup_user_email');
delete_site_option('bs_auth_signup_user_email');
delete_option('bs_auth_signup_display_name');
delete_site_option('bs_auth_signup_display_name');
delete_option('bs_auth_signup_nickname');
delete_site_option('bs_auth_signup_nickname');
delete_option('bs_auth_signup_first_name');
delete_site_option('bs_auth_signup_first_name');
delete_option('bs_auth_signup_last_name');
delete_site_option('bs_auth_signup_last_name');
delete_option('bs_auth_signup_description');
delete_site_option('bs_auth_signup_description');
delete_option('bs_auth_signup_jabber');
delete_site_option('bs_auth_signup_jabber');
delete_option('bs_auth_signup_aim');
delete_site_option('bs_auth_signup_aim');
delete_option('bs_auth_signup_yim');
delete_site_option('bs_auth_signup_yim');
delete_option('bsauth_oauth_debug');
delete_site_option('bsauth_oauth_debug');
delete_option('bsauth_oauth_debug_http');
delete_site_option('bsauth_oauth_debug_http');
delete_option('blaatlogin_page');
delete_site_option('blaatlogin_page');
delete_option('bs_oauth_dbversion');
delete_site_option('bs_oauth_dbversion');
delete_option('bs_debug_updatedb');
delete_site_option('bs_debug_updatedb');
delete_option('bs_oauth_dataversion');
delete_site_option('bs_oauth_dataversion');
delete_option('recently_activated');
delete_site_option('recently_activated');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );

