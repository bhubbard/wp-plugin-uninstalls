<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wee_remove_xmlrpc_methods_default_ping_status_original');
delete_site_option('wee_remove_xmlrpc_methods_default_ping_status_original');

