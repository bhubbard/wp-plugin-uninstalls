<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatprojects_default_model');
delete_site_option('chatprojects_default_model');
delete_option('chatprojects_encryption_key');
delete_site_option('chatprojects_encryption_key');
delete_option('chatprojects_general_chat_provider');
delete_site_option('chatprojects_general_chat_provider');
delete_option('chatprojects_general_chat_model');
delete_site_option('chatprojects_general_chat_model');
delete_option('chatprojects_assistant_instructions');
delete_site_option('chatprojects_assistant_instructions');
delete_option('chatprojects_max_file_size');
delete_site_option('chatprojects_max_file_size');
delete_option('chatprojects_allowed_file_types');
delete_site_option('chatprojects_allowed_file_types');
delete_option('chatprojects_openai_key');
delete_site_option('chatprojects_openai_key');
delete_option('chatprojects_chutes_key');
delete_site_option('chatprojects_chutes_key');
delete_option('chatprojects_openrouter_key');
delete_site_option('chatprojects_openrouter_key');
delete_option('chatprojects_capability_migration');
delete_site_option('chatprojects_capability_migration');
delete_option('chatprojects_activated');
delete_site_option('chatprojects_activated');
delete_option('chatprojects_gemini_key');
delete_site_option('chatprojects_gemini_key');
delete_option('chatprojects_anthropic_key');
delete_site_option('chatprojects_anthropic_key');
delete_option('chatprojects_slug_conflicts');
delete_site_option('chatprojects_slug_conflicts');
delete_option('chatprojects_db_version');
delete_site_option('chatprojects_db_version');
delete_option('chatprojects_slug_migration_version');
delete_site_option('chatprojects_slug_migration_version');
delete_option('chatprojects_old_slugs');
delete_site_option('chatprojects_old_slugs');
delete_option('chatprojects_new_slugs');
delete_site_option('chatprojects_new_slugs');
delete_option('chatprojects_slug_cleanup_version');
delete_site_option('chatprojects_slug_cleanup_version');
delete_option('chatprojects_rewrites_flushed');
delete_site_option('chatprojects_rewrites_flushed');
delete_option('chatprojects_last_encrypt_fingerprint');
delete_site_option('chatprojects_last_encrypt_fingerprint');
delete_option('chatprojects_debug_last_encrypt');
delete_site_option('chatprojects_debug_last_encrypt');
delete_option('chatprojects_debug_update_log');
delete_site_option('chatprojects_debug_update_log');
delete_option('chatprojects_debug_delete_log');
delete_site_option('chatprojects_debug_delete_log');
delete_option('chatprojects_debug_sanitize_returned');
delete_site_option('chatprojects_debug_sanitize_returned');
delete_option('chatprojects_debug_intercept');
delete_site_option('chatprojects_debug_intercept');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'chatprojects_debug_validate_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cp_gemini_api_key');
delete_site_option('cp_gemini_api_key');
delete_option('cp_anthropic_api_key');
delete_site_option('cp_anthropic_api_key');
delete_option('cp_chutes_api_key');
delete_site_option('cp_chutes_api_key');

// Delete Transients
delete_transient('chatprojects_chutes_models');
delete_site_transient('chatprojects_chutes_models');
delete_transient('chatprojects_openrouter_models');
delete_site_transient('chatprojects_openrouter_models');
delete_transient('chatprojects_slug_migration_notice');
delete_site_transient('chatprojects_slug_migration_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('chatprojects_cleanup_transients');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cp_vector_store_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cp_vector_store_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cp_vector_store_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cp_vector_store_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cp_model' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cp_model' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cp_model' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cp_model' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cp_instructions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cp_instructions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cp_instructions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cp_instructions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cp_sharing_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cp_sharing_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cp_sharing_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cp_sharing_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cp_shared_users' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cp_shared_users' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cp_shared_users' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cp_shared_users' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cp_variables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cp_variables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cp_variables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cp_variables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cp_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cp_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cp_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cp_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cp_theme_preference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cp_theme_preference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cp_theme_preference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cp_theme_preference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cp_shared_project' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cp_shared_project' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cp_shared_project' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cp_shared_project' ) );

