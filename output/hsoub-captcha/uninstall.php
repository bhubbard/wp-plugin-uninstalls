<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hcaptcha_api_key');
delete_site_option('hcaptcha_api_key');
delete_option('hcaptcha_lang');
delete_site_option('hcaptcha_lang');
delete_option('hcaptcha_background');
delete_site_option('hcaptcha_background');
delete_option('hcaptcha_border');
delete_site_option('hcaptcha_border');

