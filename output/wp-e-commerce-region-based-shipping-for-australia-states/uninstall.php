<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crikey_options');
delete_site_option('crikey_options');
delete_option('do_not_use_shipping');
delete_site_option('do_not_use_shipping');

