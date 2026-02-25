<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arpmp_post_type_cron');
delete_site_option('arpmp_post_type_cron');
delete_option('arpmp_republish_interval');
delete_site_option('arpmp_republish_interval');
delete_option('arpmp_posts_per_batch');
delete_site_option('arpmp_posts_per_batch');
delete_option('arpmp_max_republish_per_day');
delete_site_option('arpmp_max_republish_per_day');
delete_option('arpmp_enable_permalink_change');
delete_site_option('arpmp_enable_permalink_change');
delete_option('arpmp_pause_auto_republish');
delete_site_option('arpmp_pause_auto_republish');
delete_option('arpmp_date_update_mode');
delete_site_option('arpmp_date_update_mode');
delete_option('arpmp_republish_order');
delete_site_option('arpmp_republish_order');

// Delete Transients
delete_transient('arpmp_republish_count_today');
delete_site_transient('arpmp_republish_count_today');

// Clear Cron Jobs
wp_clear_scheduled_hook('arpmp_auto_republish');

