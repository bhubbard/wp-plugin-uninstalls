-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('muchat_ai_chatbot_agent_id', 'muchat_ai_chatbot_verify', 'muchat_ai_chatbot_context', 'muchat_ai_chatbot_interface_initial_messages', 'muchat_ai_chatbot_enable_guest_messages', 'muchat_ai_chatbot_guest_initial_messages', 'muchat_ai_chatbot_enable_guest_context', 'muchat_ai_chatbot_guest_context', 'muchat_ai_chatbot_load_strategy', 'muchat_ai_chatbot_script_position', 'muchat_ai_chatbot_use_logged_in_user_info', 'muchat_ai_chatbot_widget_enabled', 'muchat_ai_chatbot_schedule_enabled', 'muchat_ai_chatbot_schedule_days', 'muchat_ai_chatbot_schedule_start_time', 'muchat_ai_chatbot_schedule_end_time', 'muchat_ai_chatbot_plugin_options', 'muchat_ai_chatbot_visibility_mode', 'muchat_ai_chatbot_visibility_pages', 'muchat_ai_chatbot_onboarding', 'muchat_connection_status', 'muchat_product_meta_fields_cache', 'muchat_ai_chatbot_plugin_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'digits_phone', 'phone', '_muchat_previous_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'digits_phone', 'phone', '_muchat_previous_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'digits_phone', 'phone', '_muchat_previous_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'digits_phone', 'phone', '_muchat_previous_data');

