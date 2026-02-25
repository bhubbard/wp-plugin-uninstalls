<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('revostock_gallery_settings');
delete_site_option('revostock_gallery_settings');
delete_option('revostock_gallery_cache');
delete_site_option('revostock_gallery_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('revostock_gallery_cron_hook');

