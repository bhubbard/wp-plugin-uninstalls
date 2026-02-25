<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notification');
delete_site_option('notification');
delete_option('notification_bg_color');
delete_site_option('notification_bg_color');
delete_option('notification_txt_color');
delete_site_option('notification_txt_color');
delete_option('notification_bar_fonts');
delete_site_option('notification_bar_fonts');
delete_option('notification_btn_txt');
delete_site_option('notification_btn_txt');
delete_option('notification_btn_url');
delete_site_option('notification_btn_url');
delete_option('notification_btn_bg_color');
delete_site_option('notification_btn_bg_color');
delete_option('notification_btn_txt_color');
delete_site_option('notification_btn_txt_color');

