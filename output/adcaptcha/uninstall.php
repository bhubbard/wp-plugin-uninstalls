<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adcaptcha_api_key');
delete_site_option('adcaptcha_api_key');
delete_option('adcaptcha_placement_id');
delete_site_option('adcaptcha_placement_id');
delete_option('adcaptcha_render_captcha');
delete_site_option('adcaptcha_render_captcha');
delete_option('adcaptcha_selected_plugins');
delete_site_option('adcaptcha_selected_plugins');
delete_option('experimental_disable_wc_checkout_endpoint');
delete_site_option('experimental_disable_wc_checkout_endpoint');
delete_option('adcaptcha_wc_checkout_optional_trigger');
delete_site_option('adcaptcha_wc_checkout_optional_trigger');

