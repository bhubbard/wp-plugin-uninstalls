<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('core_framework_main');
delete_site_option('core_framework_main');
delete_option('core_framework_bricks_license_key');
delete_site_option('core_framework_bricks_license_key');
delete_option('core_framework_selected_preset_backup');
delete_site_option('core_framework_selected_preset_backup');
delete_option('core_framework_oxygen_license_key');
delete_site_option('core_framework_oxygen_license_key');
delete_option('core_framework_colors');
delete_site_option('core_framework_colors');
delete_option('core_framework_editor_prefixed_css');
delete_site_option('core_framework_editor_prefixed_css');
delete_option('core_framework_grouped_classes');
delete_site_option('core_framework_grouped_classes');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('core_framework_oxygen_css_helper');
delete_site_option('core_framework_oxygen_css_helper');
delete_option('core_framework_db_version');
delete_site_option('core_framework_db_version');

// Delete Transients
delete_transient('core-framework-update-notice');
delete_site_transient('core-framework-update-notice');
delete_transient('core_framework_updated');
delete_site_transient('core_framework_updated');
delete_transient('core_framework_updated_time');
delete_site_transient('core_framework_updated_time');

