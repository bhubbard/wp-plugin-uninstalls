<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('botsailor_abandoned_cart_webhook_url');
delete_site_option('botsailor_abandoned_cart_webhook_url');

// Clear Cron Jobs
wp_clear_scheduled_hook('botsailor_check_abandoned_carts');

