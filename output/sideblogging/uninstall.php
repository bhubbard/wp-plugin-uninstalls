<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sideblogging');
delete_site_option('sideblogging');

// Delete Transients
delete_transient('oauth_token');
delete_site_transient('oauth_token');
delete_transient('oauth_token_secret');
delete_site_transient('oauth_token_secret');

// Clear Cron Jobs
wp_clear_scheduled_hook('sideblogging_cron');

