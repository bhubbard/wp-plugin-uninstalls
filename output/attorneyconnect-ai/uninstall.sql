-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('attorneyconnect_ai_website_code', 'attorneyconnect_ai_widget_bar_placement', 'attorneyconnect_ai_feature_color', 'attorneyconnect_ai_text_color', 'attorneyconnect_ai_include_title_button', 'attorneyconnect_ai_include_call_button', 'attorneyconnect_ai_include_email_button', 'attorneyconnect_ai_include_chat_button', 'attorneyconnect_ai_show_powered_by', 'attorneyconnect_ai_show_floating_chat_button', 'attorneyconnect_ai_engagement_time');

