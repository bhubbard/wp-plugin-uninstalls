<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_meta_optimizer');
delete_site_option('wp_meta_optimizer');
delete_option('wp_meta_optimizer_version');
delete_site_option('wp_meta_optimizer_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('import_metas_wpmo');

