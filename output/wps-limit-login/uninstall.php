<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wps_limit_login_allow_local_options');
delete_site_option('wps_limit_login_allow_local_options');
delete_option('wps_limit_login_use_local_options');
delete_site_option('wps_limit_login_use_local_options');
delete_option('site_name');
delete_site_option('site_name');
delete_option('wps_limit_login_activated');
delete_site_option('wps_limit_login_activated');
delete_option('wpslimitlogin_admin_footer_text_rated');
delete_site_option('wpslimitlogin_admin_footer_text_rated');
delete_option('wps_limit_lockout_notify');
delete_site_option('wps_limit_lockout_notify');
delete_option('wps_limit_login_show_credit_link');
delete_site_option('wps_limit_login_show_credit_link');
delete_option('wps_limit_login_allowed_retries');
delete_site_option('wps_limit_login_allowed_retries');
delete_option('wps_limit_login_lockout_duration');
delete_site_option('wps_limit_login_lockout_duration');
delete_option('wps_limit_login_valid_duration');
delete_site_option('wps_limit_login_valid_duration');
delete_option('wps_limit_login_allowed_lockouts');
delete_site_option('wps_limit_login_allowed_lockouts');
delete_option('wps_limit_login_long_duration');
delete_site_option('wps_limit_login_long_duration');
delete_option('wps_limit_login_notify_email_after');
delete_site_option('wps_limit_login_notify_email_after');
delete_option('wps_limit_login_whitelist');
delete_site_option('wps_limit_login_whitelist');
delete_option('wps_limit_login_blacklist');
delete_site_option('wps_limit_login_blacklist');
delete_option('wps_limit_login_retries');
delete_site_option('wps_limit_login_retries');
delete_option('wps_limit_login_retries_valid');
delete_site_option('wps_limit_login_retries_valid');
delete_option('wps_limit_login_logged');
delete_site_option('wps_limit_login_logged');
delete_option('wps_limit_lockouts_total');
delete_site_option('wps_limit_lockouts_total');
delete_option('wps_limit_login_lockouts');
delete_site_option('wps_limit_login_lockouts');

// Delete Transients
delete_transient('wps_plugins_adds');
delete_site_transient('wps_plugins_adds');

