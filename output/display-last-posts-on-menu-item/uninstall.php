<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dlpom_menu_id');
delete_site_option('dlpom_menu_id');
delete_option('dlpom_menu_item_id');
delete_site_option('dlpom_menu_item_id');
delete_option('dlpom_number_of_posts');
delete_site_option('dlpom_number_of_posts');
delete_option('dlpom_schedule_date');
delete_site_option('dlpom_schedule_date');
delete_option('dlpom_repeat_interval');
delete_site_option('dlpom_repeat_interval');
delete_option('dlpom_schedule_enabled');
delete_site_option('dlpom_schedule_enabled');

// Clear Cron Jobs
wp_clear_scheduled_hook('dlpom_scheduled_task');

