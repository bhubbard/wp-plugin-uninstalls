<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tlwpvg_m2m_id');
delete_site_option('tlwpvg_m2m_id');
delete_option('tlwpvg_m2m_key');
delete_site_option('tlwpvg_m2m_key');
delete_option('auto_update_core');
delete_site_option('auto_update_core');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('auto_update_themes');
delete_site_option('auto_update_themes');
delete_option('tlwpvg_last_sync_date');
delete_site_option('tlwpvg_last_sync_date');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('TLWPVG_send_installation_info');

