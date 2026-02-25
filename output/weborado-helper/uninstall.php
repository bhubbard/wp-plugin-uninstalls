<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webohe_xmlrpc_disabled');
delete_site_option('webohe_xmlrpc_disabled');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');

