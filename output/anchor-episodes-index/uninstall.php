<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jesaei_jun23_sale_transient_deleted');
delete_site_option('jesaei_jun23_sale_transient_deleted');
delete_option('jes_anchor_settings');
delete_site_option('jes_anchor_settings');

// Delete Transients
delete_transient('jesaei_notice_dismissed');
delete_site_transient('jesaei_notice_dismissed');
delete_transient('jesaei_episodes');
delete_site_transient('jesaei_episodes');

// Clear Cron Jobs
wp_clear_scheduled_hook('jesaei_hourly_event');

