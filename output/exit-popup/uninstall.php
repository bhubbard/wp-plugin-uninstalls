<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('exit_popup_cookie_expire');
delete_site_option('exit_popup_cookie_expire');
delete_option('exit_popup_click_outside');
delete_site_option('exit_popup_click_outside');
delete_option('exit_popup_logged_out_users_only');
delete_site_option('exit_popup_logged_out_users_only');
delete_option('exit_popup_modal_width');
delete_site_option('exit_popup_modal_width');
delete_option('exit_popup_modal_height');
delete_site_option('exit_popup_modal_height');
delete_option('exit_popup_popup_title_color');
delete_site_option('exit_popup_popup_title_color');
delete_option('exit_popup_popup_title');
delete_site_option('exit_popup_popup_title');
delete_option('exit_popup_popup_footer');
delete_site_option('exit_popup_popup_footer');
delete_option('exit_popup_popup_body');
delete_site_option('exit_popup_popup_body');
delete_option('exit_popup_languages');
delete_site_option('exit_popup_languages');
delete_option('exit-popup-exclude-from-posts');
delete_site_option('exit-popup-exclude-from-posts');
delete_option('exit_popup_powered_by');
delete_site_option('exit_popup_powered_by');

