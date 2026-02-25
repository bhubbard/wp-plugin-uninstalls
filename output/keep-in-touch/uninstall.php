<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('keep_in_touch_use_anti_robot_page');
delete_site_option('keep_in_touch_use_anti_robot_page');
delete_option('keep_in_touch_use_full_name');
delete_site_option('keep_in_touch_use_full_name');
delete_option('keep_in_touch_subscription_confirmation_text');
delete_site_option('keep_in_touch_subscription_confirmation_text');
delete_option('keep_in_touch_send_empty_digest_message');
delete_site_option('keep_in_touch_send_empty_digest_message');
delete_option('keep_in_touch_empty_digest_message_text');
delete_site_option('keep_in_touch_empty_digest_message_text');
delete_option('keep_in_touch_delivery_weekday');
delete_site_option('keep_in_touch_delivery_weekday');
delete_option('keep_in_touch_delivery_time');
delete_site_option('keep_in_touch_delivery_time');
delete_option('keep_in_touch_header_image_option');
delete_site_option('keep_in_touch_header_image_option');
delete_option('keep_in_touch_header_image_custom_path');
delete_site_option('keep_in_touch_header_image_custom_path');

// Clear Cron Jobs
wp_clear_scheduled_hook('keep_in_touch_daily_event_hook');
wp_clear_scheduled_hook('keep_in_touch_weekly_event_hook');

