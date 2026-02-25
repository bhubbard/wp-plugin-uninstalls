<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('universal_google_analytics_version');
delete_site_option('universal_google_analytics_version');
delete_option('universal_google_analytics_tracking_id');
delete_site_option('universal_google_analytics_tracking_id');
delete_option('universal_google_tag_type');
delete_site_option('universal_google_tag_type');
delete_option('universal_google_analytics_gtag_id');
delete_site_option('universal_google_analytics_gtag_id');
delete_option('universal_google_analytics_tracking_id_ga4');
delete_site_option('universal_google_analytics_tracking_id_ga4');

