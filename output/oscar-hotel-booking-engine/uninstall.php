<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ohbe_inventory');
delete_site_option('ohbe_inventory');
delete_option('ohbe_inventory_accounts');
delete_site_option('ohbe_inventory_accounts');
delete_option('ohbe_settings');
delete_site_option('ohbe_settings');
delete_option('ohbe');
delete_site_option('ohbe');

// Delete Transients
delete_transient('ohbe_flush');
delete_site_transient('ohbe_flush');

