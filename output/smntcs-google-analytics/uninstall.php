<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smntcs_google_analytics_tracking_code');
delete_site_option('smntcs_google_analytics_tracking_code');
delete_option('smntcs_google_analytics_ip_anonymization');
delete_site_option('smntcs_google_analytics_ip_anonymization');

