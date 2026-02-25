<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kitgenix_captcha_for_cloudflare_turnstile_metrics');
delete_site_option('kitgenix_captcha_for_cloudflare_turnstile_metrics');
delete_option('kitgenix_captcha_for_cloudflare_turnstile_settings');
delete_site_option('kitgenix_captcha_for_cloudflare_turnstile_settings');
delete_option('kitgenix_turnstile_last_verify');
delete_site_option('kitgenix_turnstile_last_verify');

// Delete Transients
delete_transient('kitgenix_captcha_for_cloudflare_turnstile_do_activation_redirect');
delete_site_transient('kitgenix_captcha_for_cloudflare_turnstile_do_activation_redirect');

