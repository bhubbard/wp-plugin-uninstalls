-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autoreply_email', 'autoreply_ai_api_key', 'autoreply_ai_activated', 'autoreply_ai_word_limit', 'autoreply_ai_selected_model_gemini', 'autoreply_ai_selected_engine', 'autoreply_ai_auto_reply', 'autoreply_ai_selected_user', 'autoreply_ai_selected_model', 'autoreply_ai_selected_forum', 'autoreply_ai_prompt_add', 'autoreply_ai_auto_reply_msg', 'autoreply_ai_without_reply_enable', 'autoreply_ai_generated_ai_notic', 'autoreply_ai_generated_ai_notic_enable', 'autoreply_ai_selected_comment_based', 'autoreply_llmstxt_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_auto_reply', 'fmwp_topic', 'fmwp_forum', '_bbp_reply_to');
DELETE FROM wp_usermeta WHERE meta_key IN ('_auto_reply', 'fmwp_topic', 'fmwp_forum', '_bbp_reply_to');
DELETE FROM wp_termmeta WHERE meta_key IN ('_auto_reply', 'fmwp_topic', 'fmwp_forum', '_bbp_reply_to');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_auto_reply', 'fmwp_topic', 'fmwp_forum', '_bbp_reply_to');

