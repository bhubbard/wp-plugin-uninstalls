<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bfwpf_licenses');
delete_site_option('bfwpf_licenses');
delete_option('wpforms_settings');
delete_site_option('wpforms_settings');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

