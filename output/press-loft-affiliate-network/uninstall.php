<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pl_an_brand_credentials');
delete_site_option('pl_an_brand_credentials');
delete_option('pl_an_active');
delete_site_option('pl_an_active');

// Clear Cron Jobs
wp_clear_scheduled_hook('press_loft_heartbeat_cron_hook');
wp_clear_scheduled_hook('press_loft_sale_post_pack_cron_hook');

