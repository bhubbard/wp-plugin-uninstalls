<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('afasm_settings_staff_options');
delete_site_option('afasm_settings_staff_options');
delete_option('AFASM_ACCESS_TOKEN_SECRET_KEY');
delete_site_option('AFASM_ACCESS_TOKEN_SECRET_KEY');
delete_option('AFASM_REFRESH_TOKEN_SECRET_KEY');
delete_site_option('AFASM_REFRESH_TOKEN_SECRET_KEY');

