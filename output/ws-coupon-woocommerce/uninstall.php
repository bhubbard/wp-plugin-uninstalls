<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ws_show_popup');
delete_site_option('ws_show_popup');
delete_option('ws_popup_title');
delete_site_option('ws_popup_title');
delete_option('ws_hide_after');
delete_site_option('ws_hide_after');
delete_option('ws_popup_coupon');
delete_site_option('ws_popup_coupon');
delete_option('ws_popup_background');
delete_site_option('ws_popup_background');
delete_option('ws_popup_border_color');
delete_site_option('ws_popup_border_color');
delete_option('ws_popup_font_color');
delete_site_option('ws_popup_font_color');

