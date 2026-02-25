<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('code_core_tracking_optin');
delete_site_option('code_core_tracking_optin');
delete_option('code_core_plugin_version');
delete_site_option('code_core_plugin_version');
delete_option('ssac_settings');
delete_site_option('ssac_settings');

