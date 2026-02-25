<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wp_scheduled_missed_time');
delete_site_transient('wp_scheduled_missed_time');

