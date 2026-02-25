<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('outvoice_users');
delete_site_option('outvoice_users');
delete_option('outvoice_plugin_options');
delete_site_option('outvoice_plugin_options');
delete_option('outvoice_options');
delete_site_option('outvoice_options');

// Delete Transients
delete_transient('outvoice_error');
delete_site_transient('outvoice_error');
delete_transient('outvoice_success');
delete_site_transient('outvoice_success');
delete_transient('outvoice_status');
delete_site_transient('outvoice_status');

