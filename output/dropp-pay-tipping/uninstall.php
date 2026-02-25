<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('droppcc-setting');
delete_site_option('droppcc-setting');
delete_option('droppcc-profile');
delete_site_option('droppcc-profile');
delete_option('droppcc-setting ');
delete_site_option('droppcc-setting ');
delete_option('droppcc-profile ');
delete_site_option('droppcc-profile ');

// Clear Cron Jobs
wp_clear_scheduled_hook('dropp_data_log_cron');

