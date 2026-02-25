<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dhcl_options');
delete_site_option('dhcl_options');

// Delete Transients
delete_transient('dhcl_activate');
delete_site_transient('dhcl_activate');

