<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mk_xrp_enable_xmlrpc');
delete_site_option('mk_xrp_enable_xmlrpc');

