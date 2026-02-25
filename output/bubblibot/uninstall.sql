-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bubblibot_debug_enabled', 'bubblibot_db_version', 'bubblibot_activation_error', 'bubblibot_font_size', 'bubblibot_display_pages', 'bubblibot_exclude_pages', 'bubblibot_openai_api_key', 'bubblibot_response_mode', 'bubblibot_enabled', 'bubblibot_welcome_message', 'bubblibot_placeholder_text', 'bubblibot_header_text', 'bubblibot_primary_color', 'bubblibot_secondary_color', 'bubblibot_text_color', 'bubblibot_chat_window_bg', 'bubblibot_bot_message_bg', 'bubblibot_bot_message_text', 'bubblibot_openai_model', 'bubblibot_position', 'bubblibot_mobile_enabled', 'bubblibot_language_detection_enabled', 'bubblibot_default_language', 'bubblibot_analytics_enabled', 'bubblibot_indexing_progress', 'bubblibot_api_key_verified_hash', 'bubblibot_analytics_retention', 'bubblibot_last_full_index', 'bubblibot_bot_avatar_url', 'bubblibot_woocommerce_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bubblibot_indexed_after_insert');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bubblibot_indexed_after_insert');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bubblibot_indexed_after_insert');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bubblibot_indexed_after_insert');

