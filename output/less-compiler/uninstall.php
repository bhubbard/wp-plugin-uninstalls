<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('less_compiler');
delete_site_option('less_compiler');
delete_option('less');
delete_site_option('less');
delete_option('less_vars');
delete_site_option('less_vars');
delete_option('less_variables');
delete_site_option('less_variables');
delete_option('less_variables_defaults');
delete_site_option('less_variables_defaults');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

