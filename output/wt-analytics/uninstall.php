<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aaww_active');
delete_site_option('aaww_active');
delete_option('aaww_dcsid');
delete_site_option('aaww_dcsid');
delete_option('aaww_plugin_facebook_active');
delete_site_option('aaww_plugin_facebook_active');
delete_option('aaww_plugin_facebook_domain');
delete_site_option('aaww_plugin_facebook_domain');
delete_option('aaww_plugin_gplus_active');
delete_site_option('aaww_plugin_gplus_active');
delete_option('aaww_plugin_gplus_domain');
delete_site_option('aaww_plugin_gplus_domain');
delete_option('aaww_plugin_heatmaps_active');
delete_site_option('aaww_plugin_heatmaps_active');
delete_option('aaww_plugin_heatmaps_domain');
delete_site_option('aaww_plugin_heatmaps_domain');
delete_option('aaww_plugin_replicate_active');
delete_site_option('aaww_plugin_replicate_active');
delete_option('aaww_plugin_replicate_domain');
delete_site_option('aaww_plugin_replicate_domain');
delete_option('aaww_plugin_twitter_active');
delete_site_option('aaww_plugin_twitter_active');
delete_option('aaww_plugin_twitter_domain');
delete_site_option('aaww_plugin_twitter_domain');
delete_option('aaww_plugin_youtube_active');
delete_site_option('aaww_plugin_youtube_active');
delete_option('aaww_plugin_youtube_domain');
delete_site_option('aaww_plugin_youtube_domain');
delete_option('aaww_dcdomain');
delete_site_option('aaww_dcdomain');
delete_option('aaww_time_zone');
delete_site_option('aaww_time_zone');
delete_option('aaww_time_zone_name');
delete_site_option('aaww_time_zone_name');
delete_option('aaww_i18n');
delete_site_option('aaww_i18n');
delete_option('aaww_adimpressions');
delete_site_option('aaww_adimpressions');
delete_option('aaww_adsparam');
delete_site_option('aaww_adsparam');
delete_option('aaww_offsite');
delete_site_option('aaww_offsite');
delete_option('aaww_download');
delete_site_option('aaww_download');
delete_option('aaww_downloadtypes');
delete_site_option('aaww_downloadtypes');
delete_option('aaww_anchor');
delete_site_option('aaww_anchor');
delete_option('aaww_javascript');
delete_site_option('aaww_javascript');
delete_option('aaww_cookieexpires');
delete_site_option('aaww_cookieexpires');
delete_option('aaww_onsitedoms');
delete_site_option('aaww_onsitedoms');
delete_option('aaww_fpcdom');
delete_site_option('aaww_fpcdom');
delete_option('aaww_session_tracking');
delete_site_option('aaww_session_tracking');

