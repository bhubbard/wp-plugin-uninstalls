<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ahjwtauth-private-secret');
delete_site_option('ahjwtauth-private-secret');
delete_option('ahjwtauth-jwks-url');
delete_site_option('ahjwtauth-jwks-url');
delete_option('ahjwtauth-jwt-header');
delete_site_option('ahjwtauth-jwt-header');
delete_option('ahjwtauth-user-role');
delete_site_option('ahjwtauth-user-role');

// Delete Transients
delete_transient('ahjwtauth_jwks_json');
delete_site_transient('ahjwtauth_jwks_json');

// Clear Cron Jobs
wp_clear_scheduled_hook('ahjwtauth_refresh_jwks');

