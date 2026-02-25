<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acwbsrh_api_key');
delete_site_option('acwbsrh_api_key');
delete_option('acwbsrh_settings');
delete_site_option('acwbsrh_settings');
delete_option('acwbsrh_blog_history');
delete_site_option('acwbsrh_blog_history');

// Clear Cron Jobs
wp_clear_scheduled_hook('acwbsrh_auto_generate_blog');

