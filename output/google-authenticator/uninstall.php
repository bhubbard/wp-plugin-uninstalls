<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('googleauthenticator_two_screen_signin');
delete_site_option('googleauthenticator_two_screen_signin');
delete_option('googleauthenticator_mandatory_mfa_roles');
delete_site_option('googleauthenticator_mandatory_mfa_roles');
delete_option('googleauthenticator_network_only');
delete_site_option('googleauthenticator_network_only');

