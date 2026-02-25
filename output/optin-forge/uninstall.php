<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('optin_forge_mailerlite_settings');
delete_site_option('optin_forge_mailerlite_settings');
delete_option('optin_forge_plugin_version');
delete_site_option('optin_forge_plugin_version');

