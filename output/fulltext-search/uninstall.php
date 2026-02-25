<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wpfts_used_mt');
delete_site_transient('wpfts_used_mt');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpfts_indexer_event');
wp_clear_scheduled_hook('wpfts_log_clean');

