<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('addtohos_float_button_enabled');
delete_site_option('addtohos_float_button_enabled');
delete_option('addtohos_web_app_float_text');
delete_site_option('addtohos_web_app_float_text');
delete_option('addtohos_activate');
delete_site_option('addtohos_activate');
delete_option('addtohos_menifest_version');
delete_site_option('addtohos_menifest_version');
delete_option('addtohos_web_app_title');
delete_site_option('addtohos_web_app_title');
delete_option('addtohos_web_start_page');
delete_site_option('addtohos_web_start_page');
delete_option('addtohos_web_app_color');
delete_site_option('addtohos_web_app_color');
delete_option('addtohos_web_app_background_color');
delete_site_option('addtohos_web_app_background_color');
delete_option('addtohos_manifest_screenshots');
delete_site_option('addtohos_manifest_screenshots');
delete_option('addtohos_manifest_shortcuts');
delete_site_option('addtohos_manifest_shortcuts');
delete_option('addtohos_manifest_icons');
delete_site_option('addtohos_manifest_icons');
delete_option('addtohos_web_app_button_color');
delete_site_option('addtohos_web_app_button_color');
delete_option('winter_mvc_active_plugins');
delete_site_option('winter_mvc_active_plugins');

