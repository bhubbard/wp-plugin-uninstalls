<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('google_recaptcha_site_key');
delete_site_option('google_recaptcha_site_key');
delete_option('google_recaptcha_secret_key');
delete_site_option('google_recaptcha_secret_key');
delete_option('google_recaptcha_login_check_disable');
delete_site_option('google_recaptcha_login_check_disable');

