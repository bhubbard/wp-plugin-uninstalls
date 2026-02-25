#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'irisai_mode'
wp option delete 'irisai_proxy_base_url'
wp option delete 'irisai_proxy_api_key'
wp option delete 'irisai_openai_api_key'
wp option delete 'irisai_model'
wp option delete 'irisai_vector_post_types'
wp option delete 'irisai_require_login'
wp option delete 'irisai_error_message'
wp option delete 'irisai_privacy_mode'
wp option delete 'irisai_index_posts_per_step'
wp option delete 'irisai_chunks_per_embed'
wp option delete 'irisai_step_time_budget'
wp option delete 'irisai_vector_chunk_size'
wp option delete 'irisai_vector_chunk_overlap'
wp option delete 'irisai_rate_limit'
wp option delete 'irisai_rate_window'
wp option delete 'irisai_provider'
wp option delete 'irisai_api_base'
wp option delete 'irisai_max_output_tokens'
wp option delete 'irisai_user_consent'
wp option delete 'irisai_system_prompt'
wp option delete 'irisai_prompt_suggestions'
wp option delete 'irisai_appearance'
wp option delete 'irisai_enable_waves'
wp option delete 'irisai_wave_start'
wp option delete 'irisai_wave_center'
wp option delete 'irisai_wave_end'
wp option delete 'irisai_chatpage_show_sources'
wp option delete 'irisai_sticky_input'
wp option delete 'irisai_auto_focus'
wp option delete 'irisai_chat_title'
wp option delete 'irisai_show_tagline'
wp option delete 'irisai_chat_placeholder'
wp option delete 'irisai_show_suggestions'
wp option delete 'irisai_empty_state_title'
wp option delete 'irisai_empty_state_message'
wp option delete 'irisai_vector_db_version'
wp option delete 'irisai_auto_reindex'
wp option delete 'irisai_auto_inject_widget'
wp option delete 'irisai_welcome_message'
wp option delete 'irisai_widget_theme'
wp option delete 'irisai_enable_unread_badge'
wp option delete 'irisai_persist_session'
wp option delete 'irisai_session_storage_key'
wp option delete 'irisai_widget_visibility_mode'
wp option delete 'irisai_enable_history'
wp option delete 'irisai_max_history'
wp option delete 'irisai_show_welcome'
wp option delete 'irisai_enable_sources'
wp option delete 'irisai_show_suggestions_widget'
wp option delete 'irisai_widget_position'
wp option delete 'irisai_widget_visibility_include_ids'
wp option delete 'irisai_widget_visibility_exclude_ids'
wp option delete 'irisai_enable_fallback'
wp option delete 'irisai_widget_label'
wp option delete 'irisai_installed_version'
wp option delete 'irisai_do_setup_wizard'
wp option delete 'irisai_setup_completed'
wp option delete 'irisai_setup_dismissed'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_irisai_consent_%' OR option_name LIKE '_site_transient_irisai_consent_%'"
wp transient delete 'irisai_has_index'
wp transient delete 'irisai_embedding_mismatch_detected'
wp transient delete 'irisai_rag_docs_cache'
wp transient delete 'irisai_indexing_running'

# Clear Cron Jobs
wp cron event delete 'irisai_reindex_post'
wp cron event delete 'irisai_index_step'
wp cron event delete 'irisai_background_index'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_irisai_search_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_irisai_search_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_irisai_search_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_irisai_search_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_irisai_search_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_irisai_search_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_irisai_search_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_irisai_search_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_irisai_needs_reindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_irisai_needs_reindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_irisai_needs_reindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_irisai_needs_reindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'irisai_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'irisai_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'irisai_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'irisai_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'irisai_indexed_job'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'irisai_indexed_job'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'irisai_indexed_job'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'irisai_indexed_job'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'irisai_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'irisai_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'irisai_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'irisai_preferences'"
