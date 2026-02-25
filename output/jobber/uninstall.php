<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('jobber_activation_notice');
delete_site_transient('jobber_activation_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('jobber_rebuild_cache');

