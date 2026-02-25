<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipfl_plugin_variable_form');
delete_site_option('ipfl_plugin_variable_form');
delete_option('ipfl_plugin_variable_color');
delete_site_option('ipfl_plugin_variable_color');
delete_option('ipfl_plugin_variable_name');
delete_site_option('ipfl_plugin_variable_name');
delete_option('ipfl_plugin_variable_fullpage');
delete_site_option('ipfl_plugin_variable_fullpage');

