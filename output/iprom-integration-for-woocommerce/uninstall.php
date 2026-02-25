<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iprom_site_path');
delete_site_option('iprom_site_path');
delete_option('iprom-site-path');
delete_site_option('iprom-site-path');

// Clear Cron Jobs
wp_clear_scheduled_hook('generate_iprom_feed');

