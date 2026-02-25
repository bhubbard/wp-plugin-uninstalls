<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('toms_recaptcha_woo_login_form');
delete_site_option('toms_recaptcha_woo_login_form');
delete_option('toms_recaptcha_v3_site_key');
delete_site_option('toms_recaptcha_v3_site_key');
delete_option('toms_recaptcha_v3_secret_key');
delete_site_option('toms_recaptcha_v3_secret_key');
delete_option('toms_recaptcha_type');
delete_site_option('toms_recaptcha_type');
delete_option('toms_recaptcha_v2_checkbox_site_key');
delete_site_option('toms_recaptcha_v2_checkbox_site_key');
delete_option('toms_recaptcha_v2_checkbox_secret_key');
delete_site_option('toms_recaptcha_v2_checkbox_secret_key');
delete_option('toms_recaptcha_v2_invisible_site_key');
delete_site_option('toms_recaptcha_v2_invisible_site_key');
delete_option('toms_recaptcha_v2_invisible_secret_key');
delete_site_option('toms_recaptcha_v2_invisible_secret_key');
delete_option('toms_recaptcha_cfb');
delete_site_option('toms_recaptcha_cfb');
delete_option('toms_recaptcha_verify_api');
delete_site_option('toms_recaptcha_verify_api');
delete_option('toms_recaptcha_language');
delete_site_option('toms_recaptcha_language');
delete_option('toms_recaptcha_v2_theme');
delete_site_option('toms_recaptcha_v2_theme');
delete_option('toms_recaptcha_invisible_badge');
delete_site_option('toms_recaptcha_invisible_badge');
delete_option('toms_recaptcha_um_login_form');
delete_site_option('toms_recaptcha_um_login_form');
delete_option('toms_recaptcha_um_register_form');
delete_site_option('toms_recaptcha_um_register_form');
delete_option('toms_recaptcha_um_lostpassword_form');
delete_site_option('toms_recaptcha_um_lostpassword_form');
delete_option('woocommerce_registration_generate_username');
delete_site_option('woocommerce_registration_generate_username');
delete_option('woocommerce_registration_generate_password');
delete_site_option('woocommerce_registration_generate_password');
delete_option('toms_recaptcha_woo_register_form');
delete_site_option('toms_recaptcha_woo_register_form');
delete_option('toms_recaptcha_woo_lostpassword_form');
delete_site_option('toms_recaptcha_woo_lostpassword_form');
delete_option('toms_recaptcha_woo_checkout_page');
delete_site_option('toms_recaptcha_woo_checkout_page');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('woocommerce_myaccount_lost_password_endpoint');
delete_site_option('woocommerce_myaccount_lost_password_endpoint');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('toms_recaptcha_login_form');
delete_site_option('toms_recaptcha_login_form');
delete_option('toms_recaptcha_register_form');
delete_site_option('toms_recaptcha_register_form');
delete_option('toms_recaptcha_lostpassword_form');
delete_site_option('toms_recaptcha_lostpassword_form');
delete_option('toms_recaptcha_comment_form');
delete_site_option('toms_recaptcha_comment_form');
delete_option('toms_recaptcha_clear_data');
delete_site_option('toms_recaptcha_clear_data');

