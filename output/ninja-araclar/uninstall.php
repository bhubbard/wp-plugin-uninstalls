<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Clear Cron Jobs
wp_clear_scheduled_hook('puantablosu_cron');
wp_clear_scheduled_hook('burclar_cron');
wp_clear_scheduled_hook('doviz_cron');

