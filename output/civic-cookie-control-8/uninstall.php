<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('civic_cookiecontrol_settings');
delete_site_option('civic_cookiecontrol_settings');
delete_option('civic_cookiecontrol_apikey_version');
delete_site_option('civic_cookiecontrol_apikey_version');
delete_option('civic_cookie_control_version');
delete_site_option('civic_cookie_control_version');
delete_option('civic_cookiecontrol_settings_v9');
delete_site_option('civic_cookiecontrol_settings_v9');
delete_option('cookiecontrol_settings');
delete_site_option('cookiecontrol_settings');
delete_option('civic_cookiecontrol_productval');
delete_site_option('civic_cookiecontrol_productval');

