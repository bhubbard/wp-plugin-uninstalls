<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_cta_settings');
delete_site_option('simple_cta_settings');
delete_option('simple_cta_impressions');
delete_site_option('simple_cta_impressions');
delete_option('simple_cta_clicks');
delete_site_option('simple_cta_clicks');
delete_option('simple_cta_timestamp');
delete_site_option('simple_cta_timestamp');

