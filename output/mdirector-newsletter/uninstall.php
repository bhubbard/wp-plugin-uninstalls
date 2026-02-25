<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mdirector_active');
delete_site_option('mdirector_active');
delete_option('mdirector-notice');
delete_site_option('mdirector-notice');
delete_option('mdirector_settings');
delete_site_option('mdirector_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('md_newsletter_build');

