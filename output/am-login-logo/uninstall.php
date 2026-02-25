<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_sett_loginpagebackgroundcolor');
delete_site_option('wp_sett_loginpagebackgroundcolor');
delete_option('wp_sett_loginpageformbackgroundcolor');
delete_site_option('wp_sett_loginpageformbackgroundcolor');
delete_option('wp_sett_loginpageformfieldbackgroundcolor');
delete_site_option('wp_sett_loginpageformfieldbackgroundcolor');
delete_option('wp_sett_loginpageformfontcolor');
delete_site_option('wp_sett_loginpageformfontcolor');
delete_option('wp_sett_howdytext');
delete_site_option('wp_sett_howdytext');
delete_option('wp_sett_footertext');
delete_site_option('wp_sett_footertext');
delete_option('wp_sett_hideadminlogo');
delete_site_option('wp_sett_hideadminlogo');
delete_option('wp_sett_hideadminbar');
delete_site_option('wp_sett_hideadminbar');
delete_option('wp_sett_navigationbackgroundcolor');
delete_site_option('wp_sett_navigationbackgroundcolor');
delete_option('wp_sett_navigationfontcolor');
delete_site_option('wp_sett_navigationfontcolor');
delete_option('wp_sett_navigationfonthovercolor');
delete_site_option('wp_sett_navigationfonthovercolor');
delete_option('wp_sett_navigationhoverbackgroundcolor');
delete_site_option('wp_sett_navigationhoverbackgroundcolor');
delete_option('wp_sett_subnavigationbackgroundcolor');
delete_site_option('wp_sett_subnavigationbackgroundcolor');
delete_option('wp_sett_subnavigationfontcolor');
delete_site_option('wp_sett_subnavigationfontcolor');
delete_option('wp_sett_iconscolor');
delete_site_option('wp_sett_iconscolor');
delete_option('wp_sett_loginlogo');
delete_site_option('wp_sett_loginlogo');
delete_option('wp_sett_faviconimage');
delete_site_option('wp_sett_faviconimage');
delete_option('wp_sett_uploadfilesize');
delete_site_option('wp_sett_uploadfilesize');
delete_option('wp_sett_loginpagebackgroundimage');
delete_site_option('wp_sett_loginpagebackgroundimage');

