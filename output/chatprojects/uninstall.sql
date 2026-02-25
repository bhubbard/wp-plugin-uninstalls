-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chatprojects_default_model', 'chatprojects_encryption_key', 'chatprojects_general_chat_provider', 'chatprojects_general_chat_model', 'chatprojects_assistant_instructions', 'chatprojects_max_file_size', 'chatprojects_allowed_file_types', 'chatprojects_openai_key', 'chatprojects_chutes_key', 'chatprojects_openrouter_key', 'chatprojects_capability_migration', 'chatprojects_activated', 'chatprojects_gemini_key', 'chatprojects_anthropic_key', 'chatprojects_slug_conflicts', 'chatprojects_db_version', 'chatprojects_slug_migration_version', 'chatprojects_old_slugs', 'chatprojects_new_slugs', 'chatprojects_slug_cleanup_version', 'chatprojects_rewrites_flushed', 'chatprojects_last_encrypt_fingerprint', 'chatprojects_debug_last_encrypt', 'chatprojects_debug_update_log', 'chatprojects_debug_delete_log', 'chatprojects_debug_sanitize_returned', 'chatprojects_debug_intercept', 'cp_gemini_api_key', 'cp_anthropic_api_key', 'cp_chutes_api_key', 'chatprojects_chutes_models', 'chatprojects_openrouter_models', 'chatprojects_slug_migration_notice');
DELETE FROM wp_options WHERE option_name LIKE 'chatprojects_debug_validate_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cp_vector_store_id', '_cp_model', '_cp_instructions', '_cp_sharing_mode', '_cp_shared_users', '_cp_variables', '_cp_files', 'cp_theme_preference', '_cp_shared_project');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cp_vector_store_id', '_cp_model', '_cp_instructions', '_cp_sharing_mode', '_cp_shared_users', '_cp_variables', '_cp_files', 'cp_theme_preference', '_cp_shared_project');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cp_vector_store_id', '_cp_model', '_cp_instructions', '_cp_sharing_mode', '_cp_shared_users', '_cp_variables', '_cp_files', 'cp_theme_preference', '_cp_shared_project');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cp_vector_store_id', '_cp_model', '_cp_instructions', '_cp_sharing_mode', '_cp_shared_users', '_cp_variables', '_cp_files', 'cp_theme_preference', '_cp_shared_project');

