<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('epda_version');
delete_site_option('epda_version');
delete_option('epda_version_first');
delete_site_option('epda_version_first');
delete_option('epda_config');
delete_site_option('epda_config');

// Delete Transients
delete_transient('_epda_plugin_activated');
delete_site_transient('_epda_plugin_activated');

