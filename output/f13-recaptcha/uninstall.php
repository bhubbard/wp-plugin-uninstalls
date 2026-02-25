<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('f13_recaptcha_enable');
delete_site_option('f13_recaptcha_enable');
delete_option('f13_recaptcha_private_key');
delete_site_option('f13_recaptcha_private_key');
delete_option('f13_recaptcha_public_key');
delete_site_option('f13_recaptcha_public_key');

