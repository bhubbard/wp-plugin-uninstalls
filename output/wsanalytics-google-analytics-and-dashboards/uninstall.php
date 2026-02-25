<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WSAnalytics_CLIENTID');
delete_site_option('WSAnalytics_CLIENTID');
delete_option('WSAnalytics_CLIENTSECRET');
delete_site_option('WSAnalytics_CLIENTSECRET');
delete_option('WSAnalytics_DEV_KEY');
delete_site_option('WSAnalytics_DEV_KEY');
delete_option('ws_google_token');
delete_site_option('ws_google_token');
delete_option('post_analytics_token');
delete_site_option('post_analytics_token');
delete_option('pt_webprofile');
delete_site_option('pt_webprofile');
delete_option('pt_webprofile_dashboard');
delete_site_option('pt_webprofile_dashboard');
delete_option('wsanalytics_code');
delete_site_option('wsanalytics_code');
delete_option('WSAnalytics_disable_front');
delete_site_option('WSAnalytics_disable_front');
delete_option('ws_welcome_message');
delete_site_option('ws_welcome_message');
delete_option('WSAnalytics_posts_stats');
delete_site_option('WSAnalytics_posts_stats');
delete_option('post_analytics_exclude_posts_back');
delete_site_option('post_analytics_exclude_posts_back');
delete_option('post_analytics_access_back');
delete_site_option('post_analytics_access_back');
delete_option('display_tracking_code');
delete_site_option('display_tracking_code');
delete_option('WSAnalytics_tracking_code');
delete_site_option('WSAnalytics_tracking_code');
delete_option('webPropertyId');
delete_site_option('webPropertyId');
delete_option('display_demographic_code');
delete_site_option('display_demographic_code');
delete_option('post_analytics_access');
delete_site_option('post_analytics_access');
delete_option('WSAnalytics_posts_stats_front');
delete_site_option('WSAnalytics_posts_stats_front');
delete_option('post_analytics_exclude_posts_front');
delete_site_option('post_analytics_exclude_posts_front');
delete_option('post_analytics_settings_front');
delete_site_option('post_analytics_settings_front');
delete_option('post_analytics_settings_back');
delete_site_option('post_analytics_settings_back');
delete_option('post_analytics_disable_back');
delete_site_option('post_analytics_disable_back');
delete_option('pt_webprofile_url');
delete_site_option('pt_webprofile_url');
delete_option('ws_lasterror_occur');
delete_site_option('ws_lasterror_occur');

