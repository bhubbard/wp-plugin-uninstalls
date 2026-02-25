<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('theme_versioning_settings');
delete_site_option('theme_versioning_settings');
delete_option('theme_versioning_adapters');
delete_site_option('theme_versioning_adapters');
delete_option('theme_versioning_selected_adapter_class');
delete_site_option('theme_versioning_selected_adapter_class');
delete_option('theme_versioning_ui_mode');
delete_site_option('theme_versioning_ui_mode');

