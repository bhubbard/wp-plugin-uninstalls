<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('free_writer_plugin_options');
delete_site_option('free_writer_plugin_options');
delete_option('free_writer_activate_redirect');
delete_site_option('free_writer_activate_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('import_approved_post');

