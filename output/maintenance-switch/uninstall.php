<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maintenance_switch_settings');
delete_site_option('maintenance_switch_settings');
delete_option('ms_page_html');
delete_site_option('ms_page_html');
delete_option('ms_switch_roles');
delete_site_option('ms_switch_roles');
delete_option('ms_allowed_roles');
delete_site_option('ms_allowed_roles');
delete_option('ms_allowed_ips');
delete_site_option('ms_allowed_ips');
delete_option('ms_use_theme');
delete_site_option('ms_use_theme');
delete_option('ms_status');
delete_site_option('ms_status');
delete_option('ms_maintenance_page_html');
delete_site_option('ms_maintenance_page_html');
delete_option('ms_allowed_ip');
delete_site_option('ms_allowed_ip');
delete_option('maintenance_switch_status');
delete_site_option('maintenance_switch_status');
delete_option('maintenance_switch_version');
delete_site_option('maintenance_switch_version');

