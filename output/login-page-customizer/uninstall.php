<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clicklogin_logo');
delete_site_option('clicklogin_logo');
delete_option('clicklogin_logo_width');
delete_site_option('clicklogin_logo_width');
delete_option('clicklogin_logo_height');
delete_site_option('clicklogin_logo_height');
delete_option('clicklogin_logo_padding');
delete_site_option('clicklogin_logo_padding');
delete_option('clicklogin_bg');
delete_site_option('clicklogin_bg');
delete_option('clicklogin_bg_color');
delete_site_option('clicklogin_bg_color');
delete_option('clicklogin_bg_size');
delete_site_option('clicklogin_bg_size');
delete_option('clicklogin_form_bg');
delete_site_option('clicklogin_form_bg');
delete_option('clicklogin_form_bg_color');
delete_site_option('clicklogin_form_bg_color');
delete_option('clicklogin_form_style_width');
delete_site_option('clicklogin_form_style_width');
delete_option('clicklogin_form_style_height');
delete_site_option('clicklogin_form_style_height');
delete_option('clicklogin_form_style_padding');
delete_site_option('clicklogin_form_style_padding');
delete_option('clicklogin_form_style_border');
delete_site_option('clicklogin_form_style_border');
delete_option('clicklogin_field_style_width');
delete_site_option('clicklogin_field_style_width');
delete_option('clicklogin_field_style_margin');
delete_site_option('clicklogin_field_style_margin');
delete_option('clicklogin_field_style_ifbg');
delete_site_option('clicklogin_field_style_ifbg');
delete_option('clicklogin_field_style_ifc');
delete_site_option('clicklogin_field_style_ifc');
delete_option('clicklogin_field_style_lc');
delete_site_option('clicklogin_field_style_lc');
delete_option('clicklogin_button_bg');
delete_site_option('clicklogin_button_bg');
delete_option('clicklogin_button_border');
delete_site_option('clicklogin_button_border');
delete_option('clicklogin_button_shadow');
delete_site_option('clicklogin_button_shadow');
delete_option('clicklogin_button_color');
delete_site_option('clicklogin_button_color');
delete_option('clicklogin_button_hover_bg');
delete_site_option('clicklogin_button_hover_bg');
delete_option('clicklogin_button_hover_border');
delete_site_option('clicklogin_button_hover_border');
delete_option('clicklogin_other_textColor');
delete_site_option('clicklogin_other_textColor');
delete_option('clicklogin_other_textColorH');
delete_site_option('clicklogin_other_textColorH');
delete_option('clicklogin_other_css');
delete_site_option('clicklogin_other_css');

