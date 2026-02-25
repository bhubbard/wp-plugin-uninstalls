<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sac_export');
delete_site_option('sac_export');
delete_option('sac_options');
delete_site_option('sac_options');
delete_option('sac_censors');
delete_site_option('sac_censors');
delete_option('simple-ajax-chat-dismiss-notice');
delete_site_option('simple-ajax-chat-dismiss-notice');

// Delete Transients
delete_transient('sac_logged_users');
delete_site_transient('sac_logged_users');

// Clear Cron Jobs
wp_clear_scheduled_hook('sac_cron_truncate');

