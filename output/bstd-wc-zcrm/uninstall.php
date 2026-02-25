<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bcformpro_integrate_key_data');
delete_site_option('bcformpro_integrate_key_data');
delete_option('bcform_secret_api_key');
delete_site_option('bcform_secret_api_key');
delete_option('bc_inventory_connector_installed');
delete_site_option('bc_inventory_connector_installed');
delete_option('bc_inventory_connector_version');
delete_site_option('bc_inventory_connector_version');

// Delete Transients
delete_transient('bc_inventory_connector_activation_redirect');
delete_site_transient('bc_inventory_connector_activation_redirect');
delete_transient('bc_inventory_connector_prevent_tracker_notice');
delete_site_transient('bc_inventory_connector_prevent_tracker_notice');

