<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('haendlerbund_api_token');
delete_site_option('haendlerbund_api_token');
delete_option('haendlerbund_selected_options');
delete_site_option('haendlerbund_selected_options');
delete_option('haendlerbund_selected_page_ids');
delete_site_option('haendlerbund_selected_page_ids');
delete_option('hbdocabruf');
delete_site_option('hbdocabruf');

// Clear Cron Jobs
wp_clear_scheduled_hook('haendlerbund_cron_event');

