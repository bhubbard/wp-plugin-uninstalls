<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('graylc_plugin_redirect');
delete_site_option('graylc_plugin_redirect');
delete_option('graylc_logo_url_redirect');
delete_site_option('graylc_logo_url_redirect');
delete_option('graylc_logo_text');
delete_site_option('graylc_logo_text');
delete_option('graylc_remember_me');
delete_site_option('graylc_remember_me');
delete_option('graylc_form_width');
delete_site_option('graylc_form_width');
delete_option('graylc_login_logo');
delete_site_option('graylc_login_logo');
delete_option('graylc_bg_image');
delete_site_option('graylc_bg_image');
delete_option('graylc_logo_width');
delete_site_option('graylc_logo_width');
delete_option('graylc_logo_height');
delete_site_option('graylc_logo_height');
delete_option('graylc_input_height');
delete_site_option('graylc_input_height');
delete_option('graylc_input_border_width');
delete_site_option('graylc_input_border_width');
delete_option('graylc_input_border_color');
delete_site_option('graylc_input_border_color');
delete_option('graylc_button_bg_color');
delete_site_option('graylc_button_bg_color');
delete_option('graylc_button_text_color');
delete_site_option('graylc_button_text_color');

