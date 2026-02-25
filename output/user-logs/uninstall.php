<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('userlogs_welcome');
delete_site_option('userlogs_welcome');
delete_option('userlogs_cron_cycle');
delete_site_option('userlogs_cron_cycle');

// Delete Transients
delete_transient('userlogs_activation_redirect_transient');
delete_site_transient('userlogs_activation_redirect_transient');

// Clear Cron Jobs
wp_clear_scheduled_hook('purge_user_logs_cron');

