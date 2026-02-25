<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nlingual_upgraded');
delete_site_option('nlingual_upgraded');
delete_option('nLingual-options');
delete_site_option('nLingual-options');
delete_option('nlingual_options');
delete_site_option('nlingual_options');
delete_option('nlingual_languages');
delete_site_option('nlingual_languages');
delete_option('nlingual_database_version');
delete_site_option('nlingual_database_version');
delete_option('nlingual_upgraded_tables');
delete_site_option('nlingual_upgraded_tables');
delete_option('nlingual_upgraded_options');
delete_site_option('nlingual_upgraded_options');
delete_option('nLingual-sync_rules');
delete_site_option('nLingual-sync_rules');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

