<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post_analytics_token');
delete_site_option('post_analytics_token');
delete_option('google_token');
delete_site_option('google_token');
delete_option('post_analytics_settings');
delete_site_option('post_analytics_settings');
delete_option('post_analytics_access');
delete_site_option('post_analytics_access');
delete_option('disable_front');
delete_site_option('disable_front');
delete_option('post_analytics_showguest');
delete_site_option('post_analytics_showguest');
delete_option('post_analytics_settings_back');
delete_site_option('post_analytics_settings_back');
delete_option('post_analytics_access_back');
delete_site_option('post_analytics_access_back');
delete_option('webprofile');
delete_site_option('webprofile');
delete_option('webPropertyId');
delete_site_option('webPropertyId');
delete_option('data_dashboard');
delete_site_option('data_dashboard');
delete_option('webprofile_url');
delete_site_option('webprofile_url');
delete_option('tracking_code');
delete_site_option('tracking_code');
delete_option('analytics_code');
delete_site_option('analytics_code');
delete_option('welcome_message');
delete_site_option('welcome_message');
delete_option('graph');
delete_site_option('graph');
delete_option('general');
delete_site_option('general');
delete_option('rtdata');
delete_site_option('rtdata');
delete_option('countary');
delete_site_option('countary');
delete_option('city');
delete_site_option('city');
delete_option('keywords');
delete_site_option('keywords');
delete_option('social');
delete_site_option('social');
delete_option('browser');
delete_site_option('browser');
delete_option('referrers');
delete_site_option('referrers');
delete_option('osystem');
delete_site_option('osystem');
delete_option('mobile');
delete_site_option('mobile');
delete_option('page');
delete_site_option('page');
delete_option('itelecom');
delete_site_option('itelecom');
delete_option('gcompletions');
delete_site_option('gcompletions');

