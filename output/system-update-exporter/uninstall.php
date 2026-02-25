<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('systupex_default_export_format');
delete_site_option('systupex_default_export_format');
delete_option('systupex_show_system_status');
delete_site_option('systupex_show_system_status');
delete_option('systupex_allowed_roles');
delete_site_option('systupex_allowed_roles');
delete_option('systupex_export_format');
delete_site_option('systupex_export_format');
delete_option('systupex_export_summary');
delete_site_option('systupex_export_summary');
delete_option('systupex_export_summary_text');
delete_site_option('systupex_export_summary_text');
delete_option('systupex_settings');
delete_site_option('systupex_settings');
delete_option('system_update_exporter_settings');
delete_site_option('system_update_exporter_settings');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

