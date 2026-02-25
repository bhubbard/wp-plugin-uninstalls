<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adc_only_from_localhost');
delete_site_option('adc_only_from_localhost');
delete_option('adc_api_user');
delete_site_option('adc_api_user');
delete_option('adc_api_key');
delete_site_option('adc_api_key');
delete_option('adc_enabled');
delete_site_option('adc_enabled');
delete_option('API_KEY');
delete_site_option('API_KEY');
delete_option('error_no_email');
delete_site_option('error_no_email');
delete_option('captcha_enabled');
delete_site_option('captcha_enabled');
delete_option('error_no_captcha');
delete_site_option('error_no_captcha');
delete_option('maileon_recaptcha_enabled');
delete_site_option('maileon_recaptcha_enabled');
delete_option('maileon_recaptcha_secret_key');
delete_site_option('maileon_recaptcha_secret_key');
delete_option('maileon_recaptcha_sensitivity');
delete_site_option('maileon_recaptcha_sensitivity');
delete_option('maileon_debug');
delete_site_option('maileon_debug');
delete_option('error_invalid_captcha');
delete_site_option('error_invalid_captcha');
delete_option('xq_maileon_footer_enabled');
delete_site_option('xq_maileon_footer_enabled');
delete_option('footer_default_post_id');
delete_site_option('footer_default_post_id');
delete_option('success_update_message');
delete_site_option('success_update_message');
delete_option('PAGE_UPDATE_OK');
delete_site_option('PAGE_UPDATE_OK');
delete_option('PAGE_UPDATE_ERROR');
delete_site_option('PAGE_UPDATE_ERROR');
delete_option('adc_email_field');
delete_site_option('adc_email_field');
delete_option('adc_input_delay');
delete_site_option('adc_input_delay');
delete_option('maileon_recaptcha_site_key');
delete_site_option('maileon_recaptcha_site_key');
delete_option('error_update_message');
delete_site_option('error_update_message');
delete_option('success_message');
delete_site_option('success_message');
delete_option('PAGE_OK');
delete_site_option('PAGE_OK');
delete_option('PAGE_ERROR');
delete_site_option('PAGE_ERROR');
delete_option('error_maileon');
delete_site_option('error_maileon');

