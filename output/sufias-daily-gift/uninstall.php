<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('today_gift_details_page_id');
delete_site_option('today_gift_details_page_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('today_gift_sufias_event');

