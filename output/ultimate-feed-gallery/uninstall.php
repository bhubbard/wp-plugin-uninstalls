<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ultimate_instagram_enable_accessibility');
delete_site_option('ultimate_instagram_enable_accessibility');
delete_option('ultimate-instagram-skip-premium');
delete_site_option('ultimate-instagram-skip-premium');
delete_option('ultimate_instagram_addons');
delete_site_option('ultimate_instagram_addons');
delete_option('ultimate-feed-wizard-set-up');
delete_site_option('ultimate-feed-wizard-set-up');
delete_option('ultimate_instagram_recent_log_file');
delete_site_option('ultimate_instagram_recent_log_file');
delete_option('ultimate_instagram_pagination_entries');
delete_site_option('ultimate_instagram_pagination_entries');
delete_option('ultimate_instagram_pagination_listings');
delete_site_option('ultimate_instagram_pagination_listings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('ultimate_cron_hook');

