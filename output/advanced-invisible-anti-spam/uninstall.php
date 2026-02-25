<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aia_previous_field_key');
delete_site_option('aia_previous_field_key');
delete_option('aia_current_key');
delete_site_option('aia_current_key');

// Clear Cron Jobs
wp_clear_scheduled_hook('update_aia_key');

