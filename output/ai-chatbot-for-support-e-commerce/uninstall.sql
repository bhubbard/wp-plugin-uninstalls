-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acsec_chatbot_chatbot_title', 'acsec_chatbot_current_status', 'acsec_chatbot_chat_position', 'acsec_chatbot_api_key', 'acsec_chatbot_challenge_token_temp', 'acsec_chatbot_site_id', 'acsec_chatbot_keys_sent', 'acsec_chatbot_data_push_types', 'acsec_chatbot_policy_pages', 'acsec_chatbot_active_provider', 'acsec_chatbot_openai_model', 'acsec_chatbot_gemini_model', 'acsec_chatbot_node_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acsec_chatbot_domain_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('acsec_chatbot_domain_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('acsec_chatbot_domain_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acsec_chatbot_domain_notice_dismissed');

