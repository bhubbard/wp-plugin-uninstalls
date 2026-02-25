<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('__ina_overrideby_multisite_setting');
delete_site_option('__ina_overrideby_multisite_setting');
delete_option('__ina_logout_time');
delete_site_option('__ina_logout_time');
delete_option('__ina_logout_message');
delete_site_option('__ina_logout_message');
delete_option('__ina_warn_message');
delete_site_option('__ina_warn_message');
delete_option('__ina_after_logout_message');
delete_site_option('__ina_after_logout_message');
delete_option('__ina_roles');
delete_site_option('__ina_roles');
delete_option('__ina_enable_timeout_multiusers');
delete_site_option('__ina_enable_timeout_multiusers');
delete_option('__ina_multiusers_settings');
delete_site_option('__ina_multiusers_settings');
delete_option('__ina_general_settings');
delete_site_option('__ina_general_settings');

