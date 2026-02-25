<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpty_db_version');
delete_site_option('wpty_db_version');
delete_option('wpty_priority');
delete_site_option('wpty_priority');
delete_option('wpty_email');
delete_site_option('wpty_email');
delete_option('wpty_period');
delete_site_option('wpty_period');
delete_option('options');
delete_site_option('options');

// Delete Transients
delete_transient('doing_cron');
delete_site_transient('doing_cron');

// Clear Cron Jobs
wp_clear_scheduled_hook('send_post_to_blogger');

