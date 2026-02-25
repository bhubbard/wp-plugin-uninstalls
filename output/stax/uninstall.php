<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stax-render-status');
delete_site_option('stax-render-status');
delete_option('stax-version');
delete_site_option('stax-version');
delete_option('stax_options');
delete_site_option('stax_options');
delete_option('stax-upgrades');
delete_site_option('stax-upgrades');
delete_option('stax_editor_theme');
delete_site_option('stax_editor_theme');
delete_option('stax_color_picker');
delete_site_option('stax_color_picker');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');

// Delete Transients
delete_transient('stax-default-templates');
delete_site_transient('stax-default-templates');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

