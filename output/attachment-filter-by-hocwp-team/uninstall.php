<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hocwp_plugin_core_version');
delete_site_option('hocwp_plugin_core_version');
delete_option('hocwp_plugins');
delete_site_option('hocwp_plugins');

// Delete Transients
delete_transient('hocwp_theme_flush_rewrite_rules');
delete_site_transient('hocwp_theme_flush_rewrite_rules');

