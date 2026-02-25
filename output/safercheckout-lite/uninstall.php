<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('safercheckout');
delete_site_option('safercheckout');

// Clear Cron Jobs
wp_clear_scheduled_hook('safercheckout_lite_scheduler');

