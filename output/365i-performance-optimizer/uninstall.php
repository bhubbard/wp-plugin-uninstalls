<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppo_settings');
delete_site_option('wppo_settings');
delete_option('i365_po_settings');
delete_site_option('i365_po_settings');
delete_option('i365_po_settings_backups');
delete_site_option('i365_po_settings_backups');
delete_option('i365_po_profiles');
delete_site_option('i365_po_profiles');
delete_option('i365_po_db_version');
delete_site_option('i365_po_db_version');

// Delete Transients
delete_transient('i365_po_local_fonts_cache');
delete_site_transient('i365_po_local_fonts_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('i365_po_scheduled_cleanup');

