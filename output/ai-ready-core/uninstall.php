<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_ready_core_activated');
delete_site_option('ai_ready_core_activated');
delete_option('ai_ready_llms_disabled');
delete_site_option('ai_ready_llms_disabled');
delete_option('ai_ready_llms_sections');
delete_site_option('ai_ready_llms_sections');
delete_option('ai_ready_llms_notes');
delete_site_option('ai_ready_llms_notes');
delete_option('ai_ready_site_title');
delete_site_option('ai_ready_site_title');
delete_option('ai_ready_site_summary');
delete_site_option('ai_ready_site_summary');
delete_option('ai_ready_custom_content');
delete_site_option('ai_ready_custom_content');
delete_option('ai_ready_last_section_refresh');
delete_site_option('ai_ready_last_section_refresh');
delete_option('ai_ready_agent_gate_mode');
delete_site_option('ai_ready_agent_gate_mode');
delete_option('ai_ready_agent_gate_custom');
delete_site_option('ai_ready_agent_gate_custom');
delete_option('ai_ready_original_robots_txt');
delete_site_option('ai_ready_original_robots_txt');
delete_option('ai_ready_last_diagnostics_scan');
delete_site_option('ai_ready_last_diagnostics_scan');
delete_option('ai_ready_llms_summary');
delete_site_option('ai_ready_llms_summary');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'social_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('ai_ready_diagnostics_cache');
delete_site_transient('ai_ready_diagnostics_cache');
delete_transient('ai_ready_fresh_preview_content');
delete_site_transient('ai_ready_fresh_preview_content');

// Clear Cron Jobs
wp_clear_scheduled_hook('ai_ready_delayed_refresh');

