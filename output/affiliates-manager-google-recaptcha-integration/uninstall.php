<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpam_google_recaptcha_site_key');
delete_site_option('wpam_google_recaptcha_site_key');
delete_option('wpam_google_recaptcha_secret_key');
delete_site_option('wpam_google_recaptcha_secret_key');

