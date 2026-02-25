<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('embedly_settings');
delete_site_option('embedly_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('embedly_revalidate_account');

