<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xmlrpc_control_status');
delete_site_option('xmlrpc_control_status');
delete_option('xmlrpc_control_rate_limiting_enabled');
delete_site_option('xmlrpc_control_rate_limiting_enabled');

