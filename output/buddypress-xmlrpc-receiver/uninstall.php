<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp_xmlrpc_enabled');
delete_site_option('bp_xmlrpc_enabled');
delete_option('bp_xmlrpc_cap_low');
delete_site_option('bp_xmlrpc_cap_low');
delete_option('bp_xmlrpc_enabled_calls');
delete_site_option('bp_xmlrpc_enabled_calls');
delete_option('limit_login_lockouts');
delete_site_option('limit_login_lockouts');
delete_option('limit_login_retries');
delete_site_option('limit_login_retries');
delete_option('limit_login_retries_valid');
delete_site_option('limit_login_retries_valid');
delete_option('limit_login_lockouts_total');
delete_site_option('limit_login_lockouts_total');
delete_option('limit_login_logged');
delete_site_option('limit_login_logged');
delete_option('limit_login_client_type');
delete_site_option('limit_login_client_type');
delete_option('limit_login_allowed_retries');
delete_site_option('limit_login_allowed_retries');
delete_option('limit_login_lockout_duration');
delete_site_option('limit_login_lockout_duration');
delete_option('limit_login_allowed_lockouts');
delete_site_option('limit_login_allowed_lockouts');
delete_option('limit_login_long_duration');
delete_site_option('limit_login_long_duration');
delete_option('limit_login_valid_duration');
delete_site_option('limit_login_valid_duration');
delete_option('limit_login_lockout_notify');
delete_site_option('limit_login_lockout_notify');
delete_option('limit_login_notify_email_after');
delete_site_option('limit_login_notify_email_after');
delete_option('limit_login_cookies');
delete_site_option('limit_login_cookies');

