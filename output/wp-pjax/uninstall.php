<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('WP_PJAX_PREFETCH_URLS_TANSIENT');
delete_site_transient('WP_PJAX_PREFETCH_URLS_TANSIENT');
delete_transient('WP_PJAX_LAST_PREFETCH');
delete_site_transient('WP_PJAX_LAST_PREFETCH');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp-pjax-pg-prefetch');

