<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('rd_downloads_updated');
delete_site_transient('rd_downloads_updated');

// Clear Cron Jobs
wp_clear_scheduled_hook('rddownloads_cron_purgelogs');

