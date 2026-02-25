<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scl_logo_url');
delete_site_option('scl_logo_url');
delete_option('scl_logo_width');
delete_site_option('scl_logo_width');
delete_option('scl_logo_height');
delete_site_option('scl_logo_height');
delete_option('scl_background_color');
delete_site_option('scl_background_color');
delete_option('scl_backtoblog_color');
delete_site_option('scl_backtoblog_color');
delete_option('scl_nav_color');
delete_site_option('scl_nav_color');
delete_option('scl_login_form_background_color');
delete_site_option('scl_login_form_background_color');
delete_option('scl_login_form_text_color');
delete_site_option('scl_login_form_text_color');
delete_option('scl_log_in_button_background_color');
delete_site_option('scl_log_in_button_background_color');
delete_option('scl_log_in_button_background_hover_color');
delete_site_option('scl_log_in_button_background_hover_color');
delete_option('scl_log_in_button_text_color');
delete_site_option('scl_log_in_button_text_color');
delete_option('scl_log_in_button_text_hover_color');
delete_site_option('scl_log_in_button_text_hover_color');
delete_option('scl_login_error_background_color');
delete_site_option('scl_login_error_background_color');
delete_option('scl_login_error_border_color');
delete_site_option('scl_login_error_border_color');
delete_option('scl_login_error_text_color');
delete_site_option('scl_login_error_text_color');

