<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Clear Cron Jobs
wp_clear_scheduled_hook('payracacr_custom_cron_transactions');
wp_clear_scheduled_hook('payracacr_custom_cron_news');

