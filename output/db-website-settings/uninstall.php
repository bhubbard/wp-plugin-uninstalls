<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bisteinoff_plugin_contact_data');
delete_site_option('bisteinoff_plugin_contact_data');
delete_option('bisteinoff_plugin_contact_shortcodes_migrated');
delete_site_option('bisteinoff_plugin_contact_shortcodes_migrated');
delete_option('bisteinoff_plugin_contact_shortcode_migration_completed');
delete_site_option('bisteinoff_plugin_contact_shortcode_migration_completed');

// Delete Transients
delete_transient('bisteinoff_shortcode_check_results');
delete_site_transient('bisteinoff_shortcode_check_results');
delete_transient('bisteinoff_shortcode_migration_results');
delete_site_transient('bisteinoff_shortcode_migration_results');

