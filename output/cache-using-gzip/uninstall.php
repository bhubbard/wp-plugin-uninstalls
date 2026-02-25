<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('cugz_notice');
delete_site_transient('cugz_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('cugz_cron_auto_preload');

