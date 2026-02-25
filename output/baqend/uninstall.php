<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('baqend');
delete_site_option('baqend');

// Clear Cron Jobs
wp_clear_scheduled_hook('cron_revalidate_html');
wp_clear_scheduled_hook('cron_update_speed_kit');

