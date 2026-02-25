<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('guard_status');
delete_site_option('guard_status');
delete_option('guard_lpl');
delete_site_option('guard_lpl');
delete_option('guard_notices');
delete_site_option('guard_notices');
delete_option('guard_max_attempts');
delete_site_option('guard_max_attempts');
delete_option('guard_lock_duration');
delete_site_option('guard_lock_duration');
delete_option('guard_notify_email');
delete_site_option('guard_notify_email');
delete_option('guard_pin');
delete_site_option('guard_pin');
delete_option('guard_url');
delete_site_option('guard_url');
delete_option('guard_custom_text');
delete_site_option('guard_custom_text');
delete_option('guard_custom_username_text');
delete_site_option('guard_custom_username_text');
delete_option('guard_custom_password_text');
delete_site_option('guard_custom_password_text');
delete_option('guard_custom_authkey_text');
delete_site_option('guard_custom_authkey_text');

