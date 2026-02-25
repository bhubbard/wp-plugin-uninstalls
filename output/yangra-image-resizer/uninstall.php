<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yaimre_options');
delete_site_option('yaimre_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('yaimre_check_media_details_in_batch');

