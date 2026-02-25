<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_permalinks_flushed');
delete_site_option('plugin_permalinks_flushed');
delete_option('dps_integration_ngoid');
delete_site_option('dps_integration_ngoid');
delete_option('dps_custom_css');
delete_site_option('dps_custom_css');
delete_option('dps_custom_js');
delete_site_option('dps_custom_js');

