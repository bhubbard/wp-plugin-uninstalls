<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loginshield_activation_redirect');
delete_site_option('loginshield_activation_redirect');
delete_option('loginshield_realm_id');
delete_site_option('loginshield_realm_id');
delete_option('loginshield_access_token');
delete_site_option('loginshield_access_token');
delete_option('loginshield_access_token_not_after');
delete_site_option('loginshield_access_token_not_after');
delete_option('loginshield_refresh_token');
delete_site_option('loginshield_refresh_token');
delete_option('loginshield_refresh_token_not_after');
delete_site_option('loginshield_refresh_token_not_after');
delete_option('loginshield_webauthz_discovery_uri');
delete_site_option('loginshield_webauthz_discovery_uri');
delete_option('loginshield_webauthz_register_uri');
delete_site_option('loginshield_webauthz_register_uri');
delete_option('loginshield_webauthz_request_uri');
delete_site_option('loginshield_webauthz_request_uri');
delete_option('loginshield_webauthz_exchange_uri');
delete_site_option('loginshield_webauthz_exchange_uri');
delete_option('loginshield_client_id');
delete_site_option('loginshield_client_id');
delete_option('loginshield_client_token');
delete_site_option('loginshield_client_token');
delete_option('loginshield_realm');
delete_site_option('loginshield_realm');
delete_option('loginshield_scope');
delete_site_option('loginshield_scope');
delete_option('loginshield_path');
delete_site_option('loginshield_path');
delete_option('loginshield_client_state');
delete_site_option('loginshield_client_state');
delete_option('loginshield_login_page');
delete_site_option('loginshield_login_page');
delete_option('loginshield_authorization_token');
delete_site_option('loginshield_authorization_token');
delete_option('loginshield_access_token_max_seconds');
delete_site_option('loginshield_access_token_max_seconds');
delete_option('loginshield_refresh_token_max_seconds');
delete_site_option('loginshield_refresh_token_max_seconds');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'loginshield_is_registered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'loginshield_is_registered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'loginshield_is_registered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'loginshield_is_registered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'loginshield_is_confirmed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'loginshield_is_confirmed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'loginshield_is_confirmed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'loginshield_is_confirmed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'loginshield_is_activated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'loginshield_is_activated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'loginshield_is_activated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'loginshield_is_activated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'loginshield_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'loginshield_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'loginshield_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'loginshield_user_id' ) );

