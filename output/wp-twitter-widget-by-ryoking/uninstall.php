<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wptp_consumer_key');
delete_site_option('wptp_consumer_key');
delete_option('wptp_consumer_secret');
delete_site_option('wptp_consumer_secret');
delete_option('wptp_oauth_token');
delete_site_option('wptp_oauth_token');
delete_option('wptp_oauth_token_secret');
delete_site_option('wptp_oauth_token_secret');
delete_option('wptp_screen_name');
delete_site_option('wptp_screen_name');
delete_option('wptw_oauth_verifier');
delete_site_option('wptw_oauth_verifier');
delete_option('wptw_oauth_token');
delete_site_option('wptw_oauth_token');
delete_option('wptw_oauth_token_secret');
delete_site_option('wptw_oauth_token_secret');

