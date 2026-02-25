<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpim_default_data');
delete_site_option('wpim_default_data');
delete_option('wpim_license');
delete_site_option('wpim_license');
delete_option('wp_inventory_rewrite');
delete_site_option('wp_inventory_rewrite');

// Delete Transients
delete_transient('wpim_full_add_ons');
delete_site_transient('wpim_full_add_ons');
delete_transient('wpim_flush_rewrite_rules');
delete_site_transient('wpim_flush_rewrite_rules');
delete_transient('wpim_messages');
delete_site_transient('wpim_messages');

