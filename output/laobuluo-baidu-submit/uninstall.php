<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('laobuluo_bs_options');
delete_site_option('laobuluo_bs_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('laobuluo_bs_event');

