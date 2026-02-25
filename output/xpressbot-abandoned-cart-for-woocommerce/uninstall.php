<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xpressbot_abandoned_cart_webhook_url');
delete_site_option('xpressbot_abandoned_cart_webhook_url');
delete_option('xpressbot_abandoned_cart_cutoff');
delete_site_option('xpressbot_abandoned_cart_cutoff');
delete_option('xpressbot_webchat_widget_code');
delete_site_option('xpressbot_webchat_widget_code');
delete_option('xpressbot_wabachat_widget_code');
delete_site_option('xpressbot_wabachat_widget_code');

// Clear Cron Jobs
wp_clear_scheduled_hook('xpressbot_check_abandoned_carts');

