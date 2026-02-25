<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bw_settings');
delete_site_option('bw_settings');

// Delete Transients
delete_transient('better_wishlist_flush_rewrite_rules');
delete_site_transient('better_wishlist_flush_rewrite_rules');

// Clear Cron Jobs
wp_clear_scheduled_hook('better_wishlist_delete_expired_wishlist');

