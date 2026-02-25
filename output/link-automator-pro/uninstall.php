<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linkaupr_donation_qr_image_id');
delete_site_option('linkaupr_donation_qr_image_id');
delete_option('linkaupr_options');
delete_site_option('linkaupr_options');
delete_option('linkaupr_db_version');
delete_site_option('linkaupr_db_version');

// Delete Transients
delete_transient('linkaupr_keywords_cache');
delete_site_transient('linkaupr_keywords_cache');
delete_transient('linkaupr_stats_cache');
delete_site_transient('linkaupr_stats_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('linkaupr_daily_cleanup');

