<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sahu_app_applestore_link');
delete_site_option('sahu_app_applestore_link');
delete_option('sahu_app_googlestore_link');
delete_site_option('sahu_app_googlestore_link');
delete_option('sahu_app_googlestore_com');
delete_site_option('sahu_app_googlestore_com');
delete_option('sahu_app_appname');
delete_site_option('sahu_app_appname');
delete_option('sahu_app_appslogan');
delete_site_option('sahu_app_appslogan');
delete_option('sahu_app_app_icon_url');
delete_site_option('sahu_app_app_icon_url');
delete_option('sahu_app_color_code');
delete_site_option('sahu_app_color_code');
delete_option('sahu_app_color_code_font');
delete_site_option('sahu_app_color_code_font');

