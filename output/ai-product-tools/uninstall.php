<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('aipt_active_plugin_dir');
delete_site_option('aipt_active_plugin_dir');
delete_option('aipt_first_activation');
delete_site_option('aipt_first_activation');
delete_option('aipt_setup_completed');
delete_site_option('aipt_setup_completed');
delete_option('aipt_custom_variables');
delete_site_option('aipt_custom_variables');
delete_option('aipt_api_provider');
delete_site_option('aipt_api_provider');
delete_option('aipt_model');
delete_site_option('aipt_model');
delete_option('aipt_language');
delete_site_option('aipt_language');
delete_option('aipt_writing_style');
delete_site_option('aipt_writing_style');
delete_option('aipt_content_length_preset');
delete_site_option('aipt_content_length_preset');
delete_option('aipt_short_length_preset');
delete_site_option('aipt_short_length_preset');
delete_option('aipt_max_tags_count');
delete_site_option('aipt_max_tags_count');
delete_option('aipt_allowed_html_tags');
delete_site_option('aipt_allowed_html_tags');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('aipt_short_system_prompt');
delete_site_option('aipt_short_system_prompt');
delete_option('aipt_short_user_prompt');
delete_site_option('aipt_short_user_prompt');
delete_option('aipt_full_system_prompt');
delete_site_option('aipt_full_system_prompt');
delete_option('aipt_full_user_prompt');
delete_site_option('aipt_full_user_prompt');
delete_option('aipt_example_short_description');
delete_site_option('aipt_example_short_description');
delete_option('aipt_example_description');
delete_site_option('aipt_example_description');
delete_option('aipt_example_tags');
delete_site_option('aipt_example_tags');
delete_option('aipt_brand_context');
delete_site_option('aipt_brand_context');
delete_option('aipt_max_short_length');
delete_site_option('aipt_max_short_length');
delete_option('aipt_max_length');
delete_site_option('aipt_max_length');
delete_option('aipt_system_prompt');
delete_site_option('aipt_system_prompt');
delete_option('aipt_user_prompt');
delete_site_option('aipt_user_prompt');
delete_option('aipt_openai_api_key');
delete_site_option('aipt_openai_api_key');
delete_option('aipt_gemini_api_key');
delete_site_option('aipt_gemini_api_key');
delete_option('aipt_claude_api_key');
delete_site_option('aipt_claude_api_key');
delete_option('aipt_onboarding_snoozed_until');
delete_site_option('aipt_onboarding_snoozed_until');
delete_option('aipt_first_run_completed');
delete_site_option('aipt_first_run_completed');
delete_option('aipt_openrouter_api_key');
delete_site_option('aipt_openrouter_api_key');
delete_option('aipt_needs_setup');
delete_site_option('aipt_needs_setup');
delete_option('aipt_onboarding_dismissed');
delete_site_option('aipt_onboarding_dismissed');
delete_option('aipt_quickstart_completed_steps');
delete_site_option('aipt_quickstart_completed_steps');
delete_option('aipt_quickstart_dismissed');
delete_site_option('aipt_quickstart_dismissed');
delete_option('aipt_quickstart_completed');
delete_site_option('aipt_quickstart_completed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'aipt_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('aipt_version');
delete_site_option('aipt_version');
delete_option('aipt_schema_version');
delete_site_option('aipt_schema_version');
delete_option('aipt_store_index_status');
delete_site_option('aipt_store_index_status');
delete_option('aipt_store_index_build_progress');
delete_site_option('aipt_store_index_build_progress');
delete_option('aipt_store_index_build_job_id');
delete_site_option('aipt_store_index_build_job_id');
delete_option('aipt_credit_secret_key');
delete_site_option('aipt_credit_secret_key');
delete_option('aipt_credit_auth_version');
delete_site_option('aipt_credit_auth_version');
delete_option('aipt_credit_api_key');
delete_site_option('aipt_credit_api_key');
delete_option('aipt_encryption_key');
delete_site_option('aipt_encryption_key');
delete_option('aipt_credit_plan_name');
delete_site_option('aipt_credit_plan_name');
delete_option('aipt_credit_local_usage');
delete_site_option('aipt_credit_local_usage');
delete_option('aipt_ctrl_api_key');
delete_site_option('aipt_ctrl_api_key');
delete_option('aipt_ctrl_secret_key');
delete_site_option('aipt_ctrl_secret_key');
delete_option('aipt_ctrl_registered');
delete_site_option('aipt_ctrl_registered');
delete_option('aipt_credit_registered');
delete_site_option('aipt_credit_registered');
delete_option('aipt_bulk_terms_accepted');
delete_site_option('aipt_bulk_terms_accepted');
delete_option('aipt_credit_terms_accepted');
delete_site_option('aipt_credit_terms_accepted');
delete_option('aipt_credit_show_troubleshoot');
delete_site_option('aipt_credit_show_troubleshoot');
delete_option('aipt_previous_version');
delete_site_option('aipt_previous_version');
delete_option('aipt_db_version');
delete_site_option('aipt_db_version');
delete_option('aipt_chatbot_settings');
delete_site_option('aipt_chatbot_settings');
delete_option('aipt_chatbot_appearance_presets');
delete_site_option('aipt_chatbot_appearance_presets');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('aipt_metabox_hidden');
delete_site_option('aipt_metabox_hidden');
delete_option('aipt_use_legacy_encryption');
delete_site_option('aipt_use_legacy_encryption');
delete_option('aipt_site_registered');
delete_site_option('aipt_site_registered');
delete_option('aipt_encryption_migrated');
delete_site_option('aipt_encryption_migrated');
delete_option('aipt_secure_encryption_migrated');
delete_site_option('aipt_secure_encryption_migrated');
delete_option('aipt_encryption_migration_backup');
delete_site_option('aipt_encryption_migration_backup');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');

// Delete Transients
delete_transient('aipt_activation_redirect');
delete_site_transient('aipt_activation_redirect');
delete_transient('aipt_bulk_feature_notice');
delete_site_transient('aipt_bulk_feature_notice');
delete_transient('aipt_version_upgrade_notice');
delete_site_transient('aipt_version_upgrade_notice');
delete_transient('aipt_database_error');
delete_site_transient('aipt_database_error');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aipt_job_monitor_%', '_site_transient_aipt_job_monitor_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aipt_job_error_rate_%', '_site_transient_aipt_job_error_rate_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%version', '_site_transient_%version' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aipt_batch_lock_%', '_site_transient_aipt_batch_lock_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('aipt_index_build_data');
delete_site_transient('aipt_index_build_data');
delete_transient('aipt_chatbot_cron_checked');
delete_site_transient('aipt_chatbot_cron_checked');
delete_transient('aipt_credits_status');
delete_site_transient('aipt_credits_status');
delete_transient('aipt_api_check');
delete_site_transient('aipt_api_check');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('aipt_process_automation_jobs');
wp_clear_scheduled_hook('aipt_monitor_automation_jobs');
wp_clear_scheduled_hook('aipt_credit_sync');
wp_clear_scheduled_hook('aipt_reap_stuck_jobs');
wp_clear_scheduled_hook('aipt_chatbot_queue_cleanup');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );

