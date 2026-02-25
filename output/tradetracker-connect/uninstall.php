<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tradetracker_connect_campaign_options');
delete_site_option('tradetracker_connect_campaign_options');
delete_option('tradetracker_connect_webservice_options');
delete_site_option('tradetracker_connect_webservice_options');
delete_option('tradetracker_connect_directlinking_options');
delete_site_option('tradetracker_connect_directlinking_options');
delete_option('tradetracker_connect_feed_options');
delete_site_option('tradetracker_connect_feed_options');
delete_option('tradetracker_connect_feed_generator');
delete_site_option('tradetracker_connect_feed_generator');
delete_option('tradetracker_connect_scheduled_events');
delete_site_option('tradetracker_connect_scheduled_events');

// Clear Cron Jobs
wp_clear_scheduled_hook('tradetracker_connect_feed_cron_hook');
wp_clear_scheduled_hook('tradetracker_connect_order_cron_hook');

