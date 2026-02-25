<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('astoundify_simple_social_login');
delete_site_option('astoundify_simple_social_login');
delete_option('astoundify_simple_social_login_facebook');
delete_site_option('astoundify_simple_social_login_facebook');
delete_option('astoundify_simple_social_login_google');
delete_site_option('astoundify_simple_social_login_google');
delete_option('astoundify_simple_social_login_twitter');
delete_site_option('astoundify_simple_social_login_twitter');

