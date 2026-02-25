<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vr_wp_notices_dompdf');
delete_site_option('vr_wp_notices_dompdf');
delete_option('vr_wp_notices_directory');
delete_site_option('vr_wp_notices_directory');
delete_option('vr_wp_notices_directory_url');
delete_site_option('vr_wp_notices_directory_url');

// Clear Cron Jobs
wp_clear_scheduled_hook('vr_wp_notices_cron');

