<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('srrw_recaptcha_cf7_enabled');
delete_site_option('srrw_recaptcha_cf7_enabled');
delete_option('srrw_recaptcha_cf7_donate_link');
delete_site_option('srrw_recaptcha_cf7_donate_link');

