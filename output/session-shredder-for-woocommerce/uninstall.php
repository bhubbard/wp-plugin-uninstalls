<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('session_shredder_base_age_hours');
delete_site_option('session_shredder_base_age_hours');
delete_option('session_shredder_hard_timeout_hours');
delete_site_option('session_shredder_hard_timeout_hours');
delete_option('session_shredder_bounce_max_pageviews');
delete_site_option('session_shredder_bounce_max_pageviews');
delete_option('session_shredder_bounce_max_cart_value');
delete_site_option('session_shredder_bounce_max_cart_value');
delete_option('session_shredder_protect_min_cart_value');
delete_site_option('session_shredder_protect_min_cart_value');
delete_option('session_shredder_stats');
delete_site_option('session_shredder_stats');
delete_option('woocommerce_experimental_guest_sessions');
delete_site_option('woocommerce_experimental_guest_sessions');

// Clear Cron Jobs
wp_clear_scheduled_hook('session_shredder_cron');

