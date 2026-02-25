-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_ai_workflows_installation_id', 'wp_ai_workflows_analytics_opt_out', 'wp_ai_workflows_last_activation', 'wp_ai_workflows_installed_at', 'wp_ai_workflows_settings', 'wp_ai_workflows_costs', 'wp_ai_workflows_multimedia_costs', 'wp_ai_workflows_cost_settings', 'wp_ai_workflows_last_cost_sync', 'wp_ai_workflows_db_version', 'wp_ai_workflows_chat_db_version', 'wp_ai_workflows', 'wp_ai_workflows_outputs', 'wp_ai_workflows_encrypted_api_key', 'wp_ai_workflows_api_key', 'wp_ai_workflows_google_integrated', 'wp_ai_workflows_google_token_info', 'wp_ai_workflows_google_access_token', 'wp_ai_workflows_google_refresh_token', 'wp_ai_workflows_active_sse_sessions', 'wp_ai_workflows_task_roles', 'wp_ai_workflows_setup_completed', 'wp_ai_workflows_google_redirect_uri', 'wp_ai_workflows_migrated_to_table', 'wp_ai_workflows_human_tasks_db_version', 'wp_ai_workflows_lite_version', 'wp_ai_workflows_version', 'wp_ai_workflows_needs_google_reauth', 'wp_ai_workflows_openrouter_models', 'wp_ai_workflows_migration_postponed', 'wp_ai_workflows_migration_lock', 'wp_ai_workflows_lite_notice_dismissed');
DELETE FROM wp_options WHERE option_name LIKE 'wp_ai_workflows_chat_config_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_ai_workflows_webhook_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_ai_workflows_refresh_chat_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_ai_workflows_action_result_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_ai_chat_session_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_ai_workflows_webhook_sample_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_ai_workflows_pending_execution_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_image_gallery');

