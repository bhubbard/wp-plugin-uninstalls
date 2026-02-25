<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tscp_plugin_enabled');
delete_site_option('tscp_plugin_enabled');
delete_option('tscp_disable_for_admins');
delete_site_option('tscp_disable_for_admins');

