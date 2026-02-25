<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('btwab_regen_thumbnails_running');
delete_site_option('btwab_regen_thumbnails_running');
delete_option('btwab_regen_thumbnails_offset');
delete_site_option('btwab_regen_thumbnails_offset');
delete_option('btwab_settings');
delete_site_option('btwab_settings');
delete_option('btwab_admin_ux');
delete_site_option('btwab_admin_ux');
delete_option('btwab_admin_ux_roles');
delete_site_option('btwab_admin_ux_roles');

// Clear Cron Jobs
wp_clear_scheduled_hook('btwab_regen_thumbnails_job');

