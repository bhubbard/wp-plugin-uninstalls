<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('summits_alert_message');
delete_site_option('summits_alert_message');
delete_option('summits_alert_theme');
delete_site_option('summits_alert_theme');
delete_option('summits_alert_css');
delete_site_option('summits_alert_css');
delete_option('summits_alert_center_message');
delete_site_option('summits_alert_center_message');
delete_option('summit_alert_message');
delete_site_option('summit_alert_message');

