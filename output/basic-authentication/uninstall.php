<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('basic_authentication_enabled');
delete_site_option('basic_authentication_enabled');
delete_option('basic_authentication_method');
delete_site_option('basic_authentication_method');
delete_option('basic_authentication_password');
delete_site_option('basic_authentication_password');

