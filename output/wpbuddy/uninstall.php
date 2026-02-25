<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbuddy_license_key');
delete_site_option('wpbuddy_license_key');
delete_option('wpbuddy_global');
delete_site_option('wpbuddy_global');

// Delete Transients
delete_transient('wpbuddy_latest_news_response');
delete_site_transient('wpbuddy_latest_news_response');

