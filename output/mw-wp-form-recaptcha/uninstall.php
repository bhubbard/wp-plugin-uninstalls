<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mw-wp-form-recaptcha-sitekey');
delete_site_option('mw-wp-form-recaptcha-sitekey');
delete_option('mw-wp-form-recaptcha-centering');
delete_site_option('mw-wp-form-recaptcha-centering');

