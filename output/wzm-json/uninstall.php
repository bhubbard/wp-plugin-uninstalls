<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wzm_posts_per_page');
delete_site_option('wzm_posts_per_page');
delete_option('wzm_products_per_page');
delete_site_option('wzm_products_per_page');
delete_option('wzm_json_update_time');
delete_site_option('wzm_json_update_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('wzm_cron_hook');

