<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fca_pc');
delete_site_option('fca_pc');
delete_option('fca_pc_after_upgrade_info');
delete_site_option('fca_pc_after_upgrade_info');
delete_option('fca_pc_no_pixel_dismissed');
delete_site_option('fca_pc_no_pixel_dismissed');
delete_option('fca_pc_version');
delete_site_option('fca_pc_version');
delete_option('fca_pc_show_review_notice');
delete_site_option('fca_pc_show_review_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('fca_pc_schedule_review_notice');

