#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chatprojects_default_model'
wp option delete 'chatprojects_encryption_key'
wp option delete 'chatprojects_general_chat_provider'
wp option delete 'chatprojects_general_chat_model'
wp option delete 'chatprojects_assistant_instructions'
wp option delete 'chatprojects_max_file_size'
wp option delete 'chatprojects_allowed_file_types'
wp option delete 'chatprojects_openai_key'
wp option delete 'chatprojects_chutes_key'
wp option delete 'chatprojects_openrouter_key'
wp option delete 'chatprojects_capability_migration'
wp option delete 'chatprojects_activated'
wp option delete 'chatprojects_gemini_key'
wp option delete 'chatprojects_anthropic_key'
wp option delete 'chatprojects_slug_conflicts'
wp option delete 'chatprojects_db_version'
wp option delete 'chatprojects_slug_migration_version'
wp option delete 'chatprojects_old_slugs'
wp option delete 'chatprojects_new_slugs'
wp option delete 'chatprojects_slug_cleanup_version'
wp option delete 'chatprojects_rewrites_flushed'
wp option delete 'chatprojects_last_encrypt_fingerprint'
wp option delete 'chatprojects_debug_last_encrypt'
wp option delete 'chatprojects_debug_update_log'
wp option delete 'chatprojects_debug_delete_log'
wp option delete 'chatprojects_debug_sanitize_returned'
wp option delete 'chatprojects_debug_intercept'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'chatprojects_debug_validate_%'"
wp option delete 'cp_gemini_api_key'
wp option delete 'cp_anthropic_api_key'
wp option delete 'cp_chutes_api_key'

# Delete Transients
wp transient delete 'chatprojects_chutes_models'
wp transient delete 'chatprojects_openrouter_models'
wp transient delete 'chatprojects_slug_migration_notice'

# Clear Cron Jobs
wp cron event delete 'chatprojects_cleanup_transients'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_vector_store_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_vector_store_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_vector_store_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_vector_store_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_model'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_instructions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_instructions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_instructions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_instructions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_sharing_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_sharing_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_sharing_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_sharing_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_shared_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_shared_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_shared_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_shared_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_variables'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_variables'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_variables'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_variables'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_theme_preference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_theme_preference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_theme_preference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_theme_preference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_shared_project'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_shared_project'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_shared_project'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_shared_project'"
