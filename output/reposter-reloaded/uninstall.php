<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kbm_Reposter_Configuration');
delete_site_option('kbm_Reposter_Configuration');

// Clear Cron Jobs
wp_clear_scheduled_hook('KBM_Reposter_event');

