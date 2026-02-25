<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('talkm-visibility-options');
delete_site_option('talkm-visibility-options');
delete_option('talkm-embed-widget-teenant-key');
delete_site_option('talkm-embed-widget-teenant-key');
delete_option('talkm-embed-widget-expire-id');
delete_site_option('talkm-embed-widget-expire-id');
delete_option('talkm-embed-widget-company-id');
delete_site_option('talkm-embed-widget-company-id');
delete_option('talkm-embed-widget-username-id');
delete_site_option('talkm-embed-widget-username-id');
delete_option('talkm-embed-widget-password-id');
delete_site_option('talkm-embed-widget-password-id');
delete_option('talkm-embed-widget-status-id');
delete_site_option('talkm-embed-widget-status-id');

// Clear Cron Jobs
wp_clear_scheduled_hook('talkm_add_every_five_minutes_event');

