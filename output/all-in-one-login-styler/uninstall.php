<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aiols_enable_customization');
delete_site_option('aiols_enable_customization');
delete_option('aiols_login_logo');
delete_site_option('aiols_login_logo');
delete_option('aiols_login_bg_img');
delete_site_option('aiols_login_bg_img');
delete_option('aiols_background_color');
delete_site_option('aiols_background_color');
delete_option('aiols_button_color');
delete_site_option('aiols_button_color');
delete_option('aiols_form_color');
delete_site_option('aiols_form_color');
delete_option('aiols_fields_border_color');
delete_site_option('aiols_fields_border_color');
delete_option('aiols_form_radius');
delete_site_option('aiols_form_radius');
delete_option('aiols_links_color');
delete_site_option('aiols_links_color');
delete_option('aiols_form_width');
delete_site_option('aiols_form_width');

