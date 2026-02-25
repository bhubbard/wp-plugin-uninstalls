-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'aipt_active_plugin_dir', 'aipt_first_activation', 'aipt_setup_completed', 'aipt_custom_variables', 'aipt_api_provider', 'aipt_model', 'aipt_language', 'aipt_writing_style', 'aipt_content_length_preset', 'aipt_short_length_preset', 'aipt_max_tags_count', 'aipt_allowed_html_tags', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'aipt_short_system_prompt', 'aipt_short_user_prompt', 'aipt_full_system_prompt', 'aipt_full_user_prompt', 'aipt_example_short_description', 'aipt_example_description', 'aipt_example_tags', 'aipt_brand_context', 'aipt_max_short_length', 'aipt_max_length', 'aipt_system_prompt', 'aipt_user_prompt', 'aipt_openai_api_key', 'aipt_gemini_api_key', 'aipt_claude_api_key', 'aipt_onboarding_snoozed_until', 'aipt_first_run_completed', 'aipt_openrouter_api_key', 'aipt_needs_setup', 'aipt_onboarding_dismissed', 'aipt_quickstart_completed_steps', 'aipt_quickstart_dismissed', 'aipt_quickstart_completed', 'aipt_version', 'aipt_schema_version', 'aipt_store_index_status', 'aipt_store_index_build_progress', 'aipt_store_index_build_job_id', 'aipt_credit_secret_key', 'aipt_credit_auth_version', 'aipt_credit_api_key', 'aipt_encryption_key', 'aipt_credit_plan_name', 'aipt_credit_local_usage', 'aipt_ctrl_api_key');
DELETE FROM wp_options WHERE option_name IN ('aipt_ctrl_secret_key', 'aipt_ctrl_registered', 'aipt_credit_registered', 'aipt_bulk_terms_accepted', 'aipt_credit_terms_accepted', 'aipt_credit_show_troubleshoot', 'aipt_previous_version', 'aipt_db_version', 'aipt_chatbot_settings', 'aipt_chatbot_appearance_presets', 'fs_active_plugins', 'aipt_metabox_hidden', 'aipt_use_legacy_encryption', 'aipt_site_registered', 'aipt_encryption_migrated', 'aipt_secure_encryption_migrated', 'aipt_encryption_migration_backup', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'aipt_activation_redirect', 'aipt_bulk_feature_notice', 'aipt_version_upgrade_notice', 'aipt_database_error', 'aipt_index_build_data', 'aipt_chatbot_cron_checked', 'aipt_credits_status', 'aipt_api_check', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'aipt_%';
DELETE FROM wp_options WHERE option_name LIKE 'aipt_job_monitor_%';
DELETE FROM wp_options WHERE option_name LIKE 'aipt_job_error_rate_%';
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE 'aipt_batch_lock_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_regular_price', '_sale_price', '_stock', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_regular_price', '_sale_price', '_stock', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_regular_price', '_sale_price', '_stock', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_regular_price', '_sale_price', '_stock', '_product_attributes');

