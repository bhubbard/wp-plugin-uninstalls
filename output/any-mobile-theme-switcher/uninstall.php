<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('forced_layout_expire_time');
delete_site_option('forced_layout_expire_time');
delete_option('iphone_theme');
delete_site_option('iphone_theme');
delete_option('show_switch_link_for_desktop');
delete_site_option('show_switch_link_for_desktop');
delete_option('desktop_view_theme_link_text');
delete_site_option('desktop_view_theme_link_text');
delete_option('mobile_view_theme_link_text');
delete_site_option('mobile_view_theme_link_text');
delete_option('ipad_theme');
delete_site_option('ipad_theme');
delete_option('android_theme');
delete_site_option('android_theme');
delete_option('android_tab_theme');
delete_site_option('android_tab_theme');
delete_option('opera_theme');
delete_site_option('opera_theme');
delete_option('blackberry_theme');
delete_site_option('blackberry_theme');
delete_option('parm_os_theme');
delete_site_option('parm_os_theme');
delete_option('windows_theme');
delete_site_option('windows_theme');
delete_option('other_theme');
delete_site_option('other_theme');
delete_option('amts_hide_pro_notice');
delete_site_option('amts_hide_pro_notice');

