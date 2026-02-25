<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oaws_cloudfront_url');
delete_site_option('oaws_cloudfront_url');
delete_option('oaws_status_connection');
delete_site_option('oaws_status_connection');
delete_option('oaws_updated_settings');
delete_site_option('oaws_updated_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

