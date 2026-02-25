<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tesu_plugin_options');
delete_site_option('tesu_plugin_options');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');

