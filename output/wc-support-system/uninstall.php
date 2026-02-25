<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wss-page');
delete_site_option('wss-page');
delete_option('wss-page-layout');
delete_site_option('wss-page-layout');
delete_option('wss-admin-color-background');
delete_site_option('wss-admin-color-background');
delete_option('wss-admin-color-text');
delete_site_option('wss-admin-color-text');
delete_option('wss-user-color-background');
delete_site_option('wss-user-color-background');
delete_option('wss-user-color-text');
delete_site_option('wss-user-color-text');
delete_option('wss-support-email');
delete_site_option('wss-support-email');
delete_option('wss-support-email-name');
delete_site_option('wss-support-email-name');
delete_option('wss-support-email-footer');
delete_site_option('wss-support-email-footer');
delete_option('wss-user-notification');
delete_site_option('wss-user-notification');
delete_option('wss-admin-notification');
delete_site_option('wss-admin-notification');
delete_option('wss-premium-key');
delete_site_option('wss-premium-key');

// Clear Cron Jobs
wp_clear_scheduled_hook('wss_cron_tickets_action');

