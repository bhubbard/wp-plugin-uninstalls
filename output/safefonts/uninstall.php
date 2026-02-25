<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chrmrtns_safefonts_max_file_size');
delete_site_option('chrmrtns_safefonts_max_file_size');
delete_option('chrmrtns_safefonts_allowed_types');
delete_site_option('chrmrtns_safefonts_allowed_types');
delete_option('chrmrtns_safefonts_preload_fonts');
delete_site_option('chrmrtns_safefonts_preload_fonts');
delete_option('chrmrtns_safefonts_delete_data_on_uninstall');
delete_site_option('chrmrtns_safefonts_delete_data_on_uninstall');
delete_option('chrmrtns_safefonts_version');
delete_site_option('chrmrtns_safefonts_version');
delete_option('safefonts_version');
delete_site_option('safefonts_version');
delete_option('chrmrtns_safefonts_migration_notice');
delete_site_option('chrmrtns_safefonts_migration_notice');
delete_option('chrmrtns_safefonts_family_folders_migrated_count');
delete_site_option('chrmrtns_safefonts_family_folders_migrated_count');
delete_option('chrmrtns_safefonts_directory_error');
delete_site_option('chrmrtns_safefonts_directory_error');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_safefonts_fonts_list_v%', '_site_transient_safefonts_fonts_list_v%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

