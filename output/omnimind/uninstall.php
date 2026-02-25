<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_omni_ai_custom_answer_prompt');
delete_site_option('_omni_ai_custom_answer_prompt');
delete_option('_omni_ai_custom_search_prompt');
delete_site_option('_omni_ai_custom_search_prompt');
delete_option('_omni_project_id');
delete_site_option('_omni_project_id');
delete_option('_omni_selected_post_types');
delete_site_option('_omni_selected_post_types');
delete_option('_omni_api_key_status');
delete_site_option('_omni_api_key_status');
delete_option('_omni_api_key');
delete_site_option('_omni_api_key');
delete_option('_omni_project_name');
delete_site_option('_omni_project_name');
delete_option('_omni_ai_search_answer');
delete_site_option('_omni_ai_search_answer');
delete_option('_omni_ai_search_content');
delete_site_option('_omni_ai_search_content');
delete_option('_omni_ai_search_cache');
delete_site_option('_omni_ai_search_cache');
delete_option('_omni_ai_search_autocomplete');
delete_site_option('_omni_ai_search_autocomplete');
delete_option('_omni_ai_search_results_limit');
delete_site_option('_omni_ai_search_results_limit');
delete_option('_omni_ai_search_trust_level');
delete_site_option('_omni_ai_search_trust_level');
delete_option('_omni_ai_cache');
delete_site_option('_omni_ai_cache');
delete_option('_omni_selected_fields_option');
delete_site_option('_omni_selected_fields_option');
delete_option('_omni_uploaded_fields_option');
delete_site_option('_omni_uploaded_fields_option');
delete_option('_omni_last_sync_date');
delete_site_option('_omni_last_sync_date');
delete_option('_omni_chains_cache');
delete_site_option('_omni_chains_cache');
delete_option('_omni_chain_id');
delete_site_option('_omni_chain_id');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient__omni_post_count_%', '_site_transient__omni_post_count_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_exclude_from_omni' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_exclude_from_omni' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_exclude_from_omni' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_exclude_from_omni' ) );

