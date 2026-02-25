<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ulm_digest_date');
delete_site_option('ulm_digest_date');
delete_option('ulm_digest_size');
delete_site_option('ulm_digest_size');
delete_option('users-login-monitor_options');
delete_site_option('users-login-monitor_options');

// Delete Transients
delete_transient('ulm_users_active');
delete_site_transient('ulm_users_active');

