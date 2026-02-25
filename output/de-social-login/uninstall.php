<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('de_social_login_force_register');
delete_site_option('de_social_login_force_register');
delete_option('de_social_login_force_register_message');
delete_site_option('de_social_login_force_register_message');
delete_option('de_social_login_facebook_enable');
delete_site_option('de_social_login_facebook_enable');
delete_option('de_social_login_facebook_id');
delete_site_option('de_social_login_facebook_id');
delete_option('de_social_login_facebook_secret');
delete_site_option('de_social_login_facebook_secret');
delete_option('de_social_login_twitter_enable');
delete_site_option('de_social_login_twitter_enable');
delete_option('de_social_login_twitter_id');
delete_site_option('de_social_login_twitter_id');
delete_option('de_social_login_twitter_secret');
delete_site_option('de_social_login_twitter_secret');
delete_option('de_social_login_google_enable');
delete_site_option('de_social_login_google_enable');
delete_option('de_social_login_google_client');
delete_site_option('de_social_login_google_client');
delete_option('de_social_login_google_secret');
delete_site_option('de_social_login_google_secret');
delete_option('de_social_login_openid_enable');
delete_site_option('de_social_login_openid_enable');
delete_option('de_social_login_linkedin_enable');
delete_site_option('de_social_login_linkedin_enable');
delete_option('de_social_login_linkedin_id');
delete_site_option('de_social_login_linkedin_id');
delete_option('de_social_login_linkedin_secret');
delete_site_option('de_social_login_linkedin_secret');
delete_option('de_social_login_yahoo_enable');
delete_site_option('de_social_login_yahoo_enable');
delete_option('de_social_login_yahoo_id');
delete_site_option('de_social_login_yahoo_id');
delete_option('de_social_login_yahoo_domain');
delete_site_option('de_social_login_yahoo_domain');
delete_option('de_social_login_yahoo_key');
delete_site_option('de_social_login_yahoo_key');
delete_option('de_social_login_yahoo_secret');
delete_site_option('de_social_login_yahoo_secret');
delete_option('de_social_login_orders');
delete_site_option('de_social_login_orders');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enable' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'deuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'deuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'deuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'deuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'deutype' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'deutype' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'deutype' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'deutype' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'deuimage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'deuimage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'deuimage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'deuimage' ) );

