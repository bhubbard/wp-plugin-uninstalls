<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brs_giris_form_heading');
delete_site_option('brs_giris_form_heading');
delete_option('brs_giris_form_captcha');
delete_site_option('brs_giris_form_captcha');
delete_option('brs_giris_form_captcha_lang');
delete_site_option('brs_giris_form_captcha_lang');
delete_option('brs_giris_form_no_shake');
delete_site_option('brs_giris_form_no_shake');
delete_option('brs_giris_form_captcha_key');
delete_site_option('brs_giris_form_captcha_key');
delete_option('brs_giris_form_captcha_theme');
delete_site_option('brs_giris_form_captcha_theme');
delete_option('brs_giris_form_captcha_type');
delete_site_option('brs_giris_form_captcha_type');
delete_option('brs_giris_redirect_register');
delete_site_option('brs_giris_redirect_register');
delete_option('brs_giris_redirect_login');
delete_site_option('brs_giris_redirect_login');
delete_option('brs_giris_custom_css');
delete_site_option('brs_giris_custom_css');
delete_option('brs_giris_custom_js');
delete_site_option('brs_giris_custom_js');
delete_option('brs_giris_form_animation_in');
delete_site_option('brs_giris_form_animation_in');
delete_option('brs_giris_form_animation_out');
delete_site_option('brs_giris_form_animation_out');
delete_option('brs_giris_form_animation_error');
delete_site_option('brs_giris_form_animation_error');
delete_option('brs_giris_logo_hide');
delete_site_option('brs_giris_logo_hide');
delete_option('brs_giris_logo_link');
delete_site_option('brs_giris_logo_link');
delete_option('brs_giris_logo_title');
delete_site_option('brs_giris_logo_title');
delete_option('brs_giris_custom_login_url');
delete_site_option('brs_giris_custom_login_url');

// Delete Transients
delete_transient('tt-logo-fonts');
delete_site_transient('tt-logo-fonts');

