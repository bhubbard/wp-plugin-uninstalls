<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cly_cf7_api_notices_options');
delete_site_option('cly_cf7_api_notices_options');
delete_option('customerly_settings');
delete_site_option('customerly_settings');
delete_option('cly_do_activation_redirect');
delete_site_option('cly_do_activation_redirect');

