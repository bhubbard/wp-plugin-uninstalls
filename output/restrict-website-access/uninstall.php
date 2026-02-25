<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zx_rwa_option_enabled');
delete_site_option('zx_rwa_option_enabled');
delete_option('zx_rwa_option_password');
delete_site_option('zx_rwa_option_password');
delete_option('zx_rwa_option_logo');
delete_site_option('zx_rwa_option_logo');
delete_option('zx_rwa_access_granted');
delete_site_option('zx_rwa_access_granted');

