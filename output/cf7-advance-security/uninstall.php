<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7as_captcha');
delete_site_option('cf7as_captcha');
delete_option('cf7as_hidden_captcha');
delete_site_option('cf7as_hidden_captcha');
delete_option('cf7as_email_confirmation');
delete_site_option('cf7as_email_confirmation');
delete_option('cf7as-inlinecss');
delete_site_option('cf7as-inlinecss');

