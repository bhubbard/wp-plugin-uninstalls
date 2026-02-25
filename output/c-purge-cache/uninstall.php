<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cloudflare-purge');
delete_site_option('cloudflare-purge');

// Clear Cron Jobs
wp_clear_scheduled_hook('c_purge_cache_on_post_update');

