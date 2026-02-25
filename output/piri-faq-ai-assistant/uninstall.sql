-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('piri_faq_ai_assistant_company_value', 'piri_faq_ai_assistant_bot_name_value', 'piri_faq_ai_assistant_base_url_value', 'piri_faq_ai_assistant_bot_src_value', 'piri_faq_ai_assistant_bot_inverted_value', 'piri_faq_ai_assistant_primary_color_value', 'piri_faq_ai_assistant_initial_state_value', 'piri_faa_example_setting', 'wpr_example_setting');

