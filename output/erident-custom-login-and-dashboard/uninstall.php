<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_erident_settings');
delete_site_option('plugin_erident_settings');
delete_option('udb_migration_from_erident');
delete_site_option('udb_migration_from_erident');
delete_option('udb_settings');
delete_site_option('udb_settings');
delete_option('udb_branding');
delete_site_option('udb_branding');
delete_option('udb_login');
delete_site_option('udb_login');

