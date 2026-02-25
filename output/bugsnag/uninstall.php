<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bugsnag_network');
delete_site_option('bugsnag_network');
delete_option('bugsnag_api_key');
delete_site_option('bugsnag_api_key');
delete_option('bugsnag_notify_severities');
delete_site_option('bugsnag_notify_severities');
delete_option('bugsnag_filterfields');
delete_site_option('bugsnag_filterfields');

