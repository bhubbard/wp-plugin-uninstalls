<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpfpf_form_data');
delete_site_option('wpfpf_form_data');

// Delete Transients
delete_transient('wpfpf_plugin_data');
delete_site_transient('wpfpf_plugin_data');

