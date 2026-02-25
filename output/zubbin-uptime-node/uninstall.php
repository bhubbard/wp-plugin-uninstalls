<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zubbin_un_settings');
delete_site_option('zubbin_un_settings');

// Delete Transients
delete_transient('zubbin_un_flash_notice');
delete_site_transient('zubbin_un_flash_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('zubbin_un_monitor_tick');

