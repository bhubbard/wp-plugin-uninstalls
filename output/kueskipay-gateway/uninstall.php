<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_kueski-gateway_settings');
delete_site_option('woocommerce_kueski-gateway_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('isa_add_every_kueski_sync');

