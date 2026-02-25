<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('upfvp-auth-invalid');
delete_site_option('upfvp-auth-invalid');
delete_option('upfvp_settings');
delete_site_option('upfvp_settings');

