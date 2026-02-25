<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('leira-cron-jobs-footer-rated');
delete_site_option('leira-cron-jobs-footer-rated');
delete_option('cron');
delete_site_option('cron');

// Delete Transients
delete_transient('doing_cron');
delete_site_transient('doing_cron');

