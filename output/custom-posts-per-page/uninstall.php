<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpppc_upgrade');
delete_site_option('cpppc_upgrade');
delete_option('cpppc_options');
delete_site_option('cpppc_options');

