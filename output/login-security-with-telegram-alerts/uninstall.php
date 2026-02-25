<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lsec_max_attempts');
delete_site_option('lsec_max_attempts');
delete_option('lsec_lockout_duration');
delete_site_option('lsec_lockout_duration');
delete_option('lsec_bot_token');
delete_site_option('lsec_bot_token');
delete_option('lsec_chat_id');
delete_site_option('lsec_chat_id');
delete_option('lsec_notify_roles');
delete_site_option('lsec_notify_roles');
delete_option('lsec_enable_geolocation');
delete_site_option('lsec_enable_geolocation');
delete_option('lsec_notify_on_failed_attempt');
delete_site_option('lsec_notify_on_failed_attempt');
delete_option('lsec_notify_admin_on_lockout');
delete_site_option('lsec_notify_admin_on_lockout');
delete_option('lsec_manual_blacklist_ips');
delete_site_option('lsec_manual_blacklist_ips');
delete_option('lsec_manual_whitelist_ips');
delete_site_option('lsec_manual_whitelist_ips');
delete_option('lsec_custom_admin_url');
delete_site_option('lsec_custom_admin_url');
delete_option('lsec_notify_new_device_login');
delete_site_option('lsec_notify_new_device_login');
delete_option('lsec_db_version');
delete_site_option('lsec_db_version');
delete_option('lsec_max_devices_per_user');
delete_site_option('lsec_max_devices_per_user');
delete_option('lsec_access_denied_message');
delete_site_option('lsec_access_denied_message');
delete_option('lsec_enable_content_restriction');
delete_site_option('lsec_enable_content_restriction');

