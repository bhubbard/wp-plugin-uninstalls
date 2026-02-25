<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('openvideoplugin_domain_verification_status');
delete_site_option('openvideoplugin_domain_verification_status');

// Clear Cron Jobs
wp_clear_scheduled_hook('openvideoplugin_refresh_channel_path_event');

