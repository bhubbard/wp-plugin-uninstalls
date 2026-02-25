<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('e6n_disable_plugin_css');
delete_site_option('e6n_disable_plugin_css');
delete_option('e6n_disable_plugin_js');
delete_site_option('e6n_disable_plugin_js');
delete_option('e6n_disable_theme_css');
delete_site_option('e6n_disable_theme_css');
delete_option('e6n_disable_theme_js');
delete_site_option('e6n_disable_theme_js');
delete_option('e6n_conditional_logic');
delete_site_option('e6n_conditional_logic');

