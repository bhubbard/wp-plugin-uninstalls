<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_groups');
delete_site_option('plugin_groups');
delete_option('plugin_groups_match');
delete_site_option('plugin_groups_match');
delete_option('groups_plugin_match');
delete_site_option('groups_plugin_match');
delete_option('plugin_locked');
delete_site_option('plugin_locked');
delete_option('plugin_hidden');
delete_site_option('plugin_hidden');
delete_option('_plugin-manager_');
delete_site_option('_plugin-manager_');
delete_option('PIGPR_VERSION_NUM');
delete_site_option('PIGPR_VERSION_NUM');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

