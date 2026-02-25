<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advanced_exit_popup_box');
delete_site_option('advanced_exit_popup_box');
delete_option('advanced_exit_popup_popup_title_color');
delete_site_option('advanced_exit_popup_popup_title_color');
delete_option('advanced_exit_popup_popup_title');
delete_site_option('advanced_exit_popup_popup_title');
delete_option('advanced_exit_popup_popup_bg_color');
delete_site_option('advanced_exit_popup_popup_bg_color');
delete_option('advanced_exit_popup_popup_body');
delete_site_option('advanced_exit_popup_popup_body');
delete_option('advanced_exit_popup_popup_footer');
delete_site_option('advanced_exit_popup_popup_footer');
delete_option('advanced_exit_popup_cookie_expire');
delete_site_option('advanced_exit_popup_cookie_expire');
delete_option('advanced_exit_popup_modal_width');
delete_site_option('advanced_exit_popup_modal_width');
delete_option('advanced_exit_popup_modal_height');
delete_site_option('advanced_exit_popup_modal_height');
delete_option('advanced_exit_popup_powered_by');
delete_site_option('advanced_exit_popup_powered_by');

