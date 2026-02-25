<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ris_cf_captcha_cloudflare_site_key');
delete_site_option('ris_cf_captcha_cloudflare_site_key');
delete_option('ris_cf_captcha_cloudflare_secret_key');
delete_site_option('ris_cf_captcha_cloudflare_secret_key');
delete_option('ris_cf_captcha_enable_captcha_on_forms');
delete_site_option('ris_cf_captcha_enable_captcha_on_forms');

