#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'aipt_active_plugin_dir'
wp option delete 'aipt_first_activation'
wp option delete 'aipt_setup_completed'
wp option delete 'aipt_custom_variables'
wp option delete 'aipt_api_provider'
wp option delete 'aipt_model'
wp option delete 'aipt_language'
wp option delete 'aipt_writing_style'
wp option delete 'aipt_content_length_preset'
wp option delete 'aipt_short_length_preset'
wp option delete 'aipt_max_tags_count'
wp option delete 'aipt_allowed_html_tags'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'aipt_short_system_prompt'
wp option delete 'aipt_short_user_prompt'
wp option delete 'aipt_full_system_prompt'
wp option delete 'aipt_full_user_prompt'
wp option delete 'aipt_example_short_description'
wp option delete 'aipt_example_description'
wp option delete 'aipt_example_tags'
wp option delete 'aipt_brand_context'
wp option delete 'aipt_max_short_length'
wp option delete 'aipt_max_length'
wp option delete 'aipt_system_prompt'
wp option delete 'aipt_user_prompt'
wp option delete 'aipt_openai_api_key'
wp option delete 'aipt_gemini_api_key'
wp option delete 'aipt_claude_api_key'
wp option delete 'aipt_onboarding_snoozed_until'
wp option delete 'aipt_first_run_completed'
wp option delete 'aipt_openrouter_api_key'
wp option delete 'aipt_needs_setup'
wp option delete 'aipt_onboarding_dismissed'
wp option delete 'aipt_quickstart_completed_steps'
wp option delete 'aipt_quickstart_dismissed'
wp option delete 'aipt_quickstart_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aipt_%'"
wp option delete 'aipt_version'
wp option delete 'aipt_schema_version'
wp option delete 'aipt_store_index_status'
wp option delete 'aipt_store_index_build_progress'
wp option delete 'aipt_store_index_build_job_id'
wp option delete 'aipt_credit_secret_key'
wp option delete 'aipt_credit_auth_version'
wp option delete 'aipt_credit_api_key'
wp option delete 'aipt_encryption_key'
wp option delete 'aipt_credit_plan_name'
wp option delete 'aipt_credit_local_usage'
wp option delete 'aipt_ctrl_api_key'
wp option delete 'aipt_ctrl_secret_key'
wp option delete 'aipt_ctrl_registered'
wp option delete 'aipt_credit_registered'
wp option delete 'aipt_bulk_terms_accepted'
wp option delete 'aipt_credit_terms_accepted'
wp option delete 'aipt_credit_show_troubleshoot'
wp option delete 'aipt_previous_version'
wp option delete 'aipt_db_version'
wp option delete 'aipt_chatbot_settings'
wp option delete 'aipt_chatbot_appearance_presets'
wp option delete 'fs_active_plugins'
wp option delete 'aipt_metabox_hidden'
wp option delete 'aipt_use_legacy_encryption'
wp option delete 'aipt_site_registered'
wp option delete 'aipt_encryption_migrated'
wp option delete 'aipt_secure_encryption_migrated'
wp option delete 'aipt_encryption_migration_backup'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'aipt_activation_redirect'
wp transient delete 'aipt_bulk_feature_notice'
wp transient delete 'aipt_version_upgrade_notice'
wp transient delete 'aipt_database_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aipt_job_monitor_%' OR option_name LIKE '_site_transient_aipt_job_monitor_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aipt_job_error_rate_%' OR option_name LIKE '_site_transient_aipt_job_error_rate_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%version' OR option_name LIKE '_site_transient_%version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aipt_batch_lock_%' OR option_name LIKE '_site_transient_aipt_batch_lock_%'"
wp transient delete 'aipt_index_build_data'
wp transient delete 'aipt_chatbot_cron_checked'
wp transient delete 'aipt_credits_status'
wp transient delete 'aipt_api_check'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'aipt_process_automation_jobs'
wp cron event delete 'aipt_monitor_automation_jobs'
wp cron event delete 'aipt_credit_sync'
wp cron event delete 'aipt_reap_stuck_jobs'
wp cron event delete 'aipt_chatbot_queue_cleanup'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
