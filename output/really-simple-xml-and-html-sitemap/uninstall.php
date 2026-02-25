<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rsxh-exclude-post-type');
delete_site_option('rsxh-exclude-post-type');
delete_option('rsxh-exclude-pages');
delete_site_option('rsxh-exclude-pages');
delete_option('rsxh-exclude-pcpt-posts');
delete_site_option('rsxh-exclude-pcpt-posts');
delete_option('rsxh-include-search-option');
delete_site_option('rsxh-include-search-option');

// Clear Cron Jobs
wp_clear_scheduled_hook('sitemap_in_schedule_interval');

