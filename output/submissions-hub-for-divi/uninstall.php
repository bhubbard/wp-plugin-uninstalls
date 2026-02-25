<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('submhufo_daily_submission_count');
delete_site_transient('submhufo_daily_submission_count');

