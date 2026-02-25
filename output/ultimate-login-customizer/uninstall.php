<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ulogcspl_login_style_template');
delete_site_option('ulogcspl_login_style_template');
delete_option('ulogcspl_login_form_border_radius');
delete_site_option('ulogcspl_login_form_border_radius');
delete_option('ulogcspl_login_button_border_radius');
delete_site_option('ulogcspl_login_button_border_radius');
delete_option('ulogcspl_login_background_color');
delete_site_option('ulogcspl_login_background_color');
delete_option('ulogcspl_login_form_background_color');
delete_site_option('ulogcspl_login_form_background_color');
delete_option('ulogcspl_login_button_color');
delete_site_option('ulogcspl_login_button_color');
delete_option('ulogcspl_login_button_text_color');
delete_site_option('ulogcspl_login_button_text_color');
delete_option('ulogcspl_login_form_transparency');
delete_site_option('ulogcspl_login_form_transparency');
delete_option('ulogcspl_login_background_image');
delete_site_option('ulogcspl_login_background_image');
delete_option('ulogcspl_login_custom_logo');
delete_site_option('ulogcspl_login_custom_logo');
delete_option('ulogcspl_login_logo_width');
delete_site_option('ulogcspl_login_logo_width');
delete_option('ulogcspl_login_logo_height');
delete_site_option('ulogcspl_login_logo_height');
delete_option('ulogcspl_login_background_blur');
delete_site_option('ulogcspl_login_background_blur');
delete_option('ulogcspl_recaptcha_site_key');
delete_site_option('ulogcspl_recaptcha_site_key');
delete_option('ulogcspl_recaptcha_secret_key');
delete_site_option('ulogcspl_recaptcha_secret_key');
delete_option('ulogcspl_recaptcha_theme');
delete_site_option('ulogcspl_recaptcha_theme');
delete_option('ulogcspl_enable_recaptcha');
delete_site_option('ulogcspl_enable_recaptcha');
delete_option('ulogcspl_captcha_type');
delete_site_option('ulogcspl_captcha_type');

