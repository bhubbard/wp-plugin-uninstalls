<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dsxmlrpcData');
delete_site_option('dsxmlrpcData');
delete_option('enable_xmlrpc');
delete_site_option('enable_xmlrpc');

