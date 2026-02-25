<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('irisnet_plugin_licenses');
delete_site_option('irisnet_plugin_licenses');
delete_option('irisnet_plugin_rules');
delete_site_option('irisnet_plugin_rules');
delete_option('irisnet_plugin_version');
delete_site_option('irisnet_plugin_version');

