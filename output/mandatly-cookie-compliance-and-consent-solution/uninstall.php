<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mdt_cookie_demo_status');
delete_site_option('mdt_cookie_demo_status');
delete_option('mdt_cookie_banner_guid');
delete_site_option('mdt_cookie_banner_guid');
delete_option('mdt_cookie_banner_status');
delete_site_option('mdt_cookie_banner_status');
delete_option('mdt_cookie_live_url');
delete_site_option('mdt_cookie_live_url');
delete_option('mdt_wp_consent_api_enabled');
delete_site_option('mdt_wp_consent_api_enabled');
delete_option('mdt_google_consent_enabled');
delete_site_option('mdt_google_consent_enabled');
delete_option('mdt_google_tags_before_consent');
delete_site_option('mdt_google_tags_before_consent');
delete_option('mdt_cookie_demo_url');
delete_site_option('mdt_cookie_demo_url');
delete_option('mcc_banner_config');
delete_site_option('mcc_banner_config');
delete_option('mdt_cookie_baseURL');
delete_site_option('mdt_cookie_baseURL');
delete_option('mdt_cookie_demoSettingFileName');
delete_site_option('mdt_cookie_demoSettingFileName');
delete_option('mdt_cookie_bannerFolder');
delete_site_option('mdt_cookie_bannerFolder');

