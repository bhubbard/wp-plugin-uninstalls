<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weld_logFolder');
delete_site_option('weld_logFolder');
delete_option('weld_status');
delete_site_option('weld_status');
delete_option('weld_remote_status_override');
delete_site_option('weld_remote_status_override');
delete_option('weld_process_list');
delete_site_option('weld_process_list');
delete_option('weld_server_array');
delete_site_option('weld_server_array');
delete_option('weld_enableLogging');
delete_site_option('weld_enableLogging');
delete_option('weld_logDuration');
delete_site_option('weld_logDuration');
delete_option('weld_warningInterval');
delete_site_option('weld_warningInterval');
delete_option('weld_hardening_wpadmin');
delete_site_option('weld_hardening_wpadmin');
delete_option('weld_hardening_pluginexcludes');
delete_site_option('weld_hardening_pluginexcludes');
delete_option('weld_statusServerArray');
delete_site_option('weld_statusServerArray');
delete_option('weld_statusTime');
delete_site_option('weld_statusTime');
delete_option('weld_warningIntervalSent');
delete_site_option('weld_warningIntervalSent');

