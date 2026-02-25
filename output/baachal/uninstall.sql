-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('baachal_ai_provider', 'baachal_gemini_api_key', 'baachal_openai_api_key', 'baachal_claude_api_key', 'baachal_grok_api_key', 'baachal_enabled', 'baachal_title', 'baachal_welcome_message', 'baachal_ai_model', 'baachal_debug_mode', 'baachal_woocommerce_integration', 'baachal_message_persistence', 'baachal_show_clear_history', 'baachal_max_terms', 'baachal_min_term_length', 'baachal_cache_duration', 'baachal_exclude_terms', 'baachal_primary_color', 'baachal_secondary_color', 'baachal_position', 'baachal_size', 'baachal_border_radius', 'baachal_chat_height', 'baachal_font_size', 'baachal_animation_enabled', 'baachal_conversation_memory', 'baachal_memory_limit', 'baachal_preserve_data_on_uninstall', 'baachal_content_indexing_enabled', 'baachal_auto_index', 'baachal_indexable_post_types', 'baachal_content_max_results', 'baachal_gemini_model', 'baachal_dynamic_terms');
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_chat_messages', '_session_id', '_user_id', '_user_ip', '_user_agent', '_baachal_exclude_from_index');
DELETE FROM wp_usermeta WHERE meta_key IN ('_chat_messages', '_session_id', '_user_id', '_user_ip', '_user_agent', '_baachal_exclude_from_index');
DELETE FROM wp_termmeta WHERE meta_key IN ('_chat_messages', '_session_id', '_user_id', '_user_ip', '_user_agent', '_baachal_exclude_from_index');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_chat_messages', '_session_id', '_user_id', '_user_ip', '_user_agent', '_baachal_exclude_from_index');

