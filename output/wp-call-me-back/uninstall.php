<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rcb_settings_options');
delete_site_option('rcb_settings_options');
delete_option('rcb_recaptcha_options');
delete_site_option('rcb_recaptcha_options');
delete_option('rcb_settings_options_picker');
delete_site_option('rcb_settings_options_picker');

