<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('daextulma_live_preview_markdown_parser');
delete_site_option('daextulma_live_preview_markdown_parser');
delete_option('daextulma_live_preview_php_auto_refresh');
delete_site_option('daextulma_live_preview_php_auto_refresh');
delete_option('daextulma_live_preview_php_debounce_delay');
delete_site_option('daextulma_live_preview_php_debounce_delay');
delete_option('daextulma_editor_markdown_parser');
delete_site_option('daextulma_editor_markdown_parser');
delete_option('daextulma_options_version');
delete_site_option('daextulma_options_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_database_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_documents_menu_required_capability' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tools_menu_required_capability' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('daextulma_dismissible_notice_a');
delete_site_option('daextulma_dismissible_notice_a');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_editor_markdown_parser' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_live_preview_markdown_parser' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

