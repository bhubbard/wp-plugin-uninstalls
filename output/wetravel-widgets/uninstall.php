<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wetravel_trips_env');
delete_site_option('wetravel_trips_env');
delete_option('wetravel_trips_slug');
delete_site_option('wetravel_trips_slug');
delete_option('wetravel_trips_designs');
delete_site_option('wetravel_trips_designs');
delete_option('wetravel_trips_items_per_slide');
delete_site_option('wetravel_trips_items_per_slide');
delete_option('wetravel_trips_items_per_row');
delete_site_option('wetravel_trips_items_per_row');
delete_option('wetravel_trips_items_per_page');
delete_site_option('wetravel_trips_items_per_page');
delete_option('wetravel_trips_border_radius');
delete_site_option('wetravel_trips_border_radius');
delete_option('wetravel_trips_embed_code');
delete_site_option('wetravel_trips_embed_code');
delete_option('wetravel_trips_last_saved');
delete_site_option('wetravel_trips_last_saved');
delete_option('wetravel_trips_user_id');
delete_site_option('wetravel_trips_user_id');
delete_option('wetravel_trips_src');
delete_site_option('wetravel_trips_src');
delete_option('wetravel_trips_display_type');
delete_site_option('wetravel_trips_display_type');
delete_option('wetravel_trips_button_type');
delete_site_option('wetravel_trips_button_type');
delete_option('wetravel_trips_button_color');
delete_site_option('wetravel_trips_button_color');
delete_option('wetravel_trips_load_more_text');
delete_site_option('wetravel_trips_load_more_text');
delete_option('wetravel_trips_search_visibility');
delete_site_option('wetravel_trips_search_visibility');

// Clear Cron Jobs
wp_clear_scheduled_hook('wetravel_trips_daily_cleanup');

