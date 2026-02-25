<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gallery_for_immich_settings');
delete_site_option('gallery_for_immich_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('gallery_for_immich_cleanup_shared_link');

