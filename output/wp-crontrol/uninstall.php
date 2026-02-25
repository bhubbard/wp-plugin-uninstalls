<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crontrol_schedules');
delete_site_option('crontrol_schedules');

// Delete Transients
delete_transient('doing_cron');
delete_site_transient('doing_cron');
delete_transient('crontrol-cron-test-ok');
delete_site_transient('crontrol-cron-test-ok');

