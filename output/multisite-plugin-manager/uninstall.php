<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pm_auto_activate_list');
delete_site_option('pm_auto_activate_list');
delete_option('pm_user_control_list');
delete_site_option('pm_user_control_list');
delete_option('pm_supporter_control_list');
delete_site_option('pm_supporter_control_list');
delete_option('pm_plugin_override_list');
delete_site_option('pm_plugin_override_list');
delete_option('site_name');
delete_site_option('site_name');

