<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xmlrpcld_allowed_plugins');
delete_site_option('xmlrpcld_allowed_plugins');
delete_option('xmlrpcld_custom_allowances');
delete_site_option('xmlrpcld_custom_allowances');

