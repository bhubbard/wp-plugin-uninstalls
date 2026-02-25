-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nexipilot_faq_provider', 'nexipilot_summary_provider', 'nexipilot_internal_links_provider', 'nexipilot_gemini_api_key', 'nexipilot_gemini_model', 'nexipilot_claude_api_key', 'nexipilot_claude_model', 'nexipilot_grok_api_key', 'nexipilot_grok_model', 'nexipilot_openai_api_key', 'nexipilot_openai_model', 'nexipilot_faq_default_layout', 'nexipilot_ai_provider', 'nexipilot_enable_faq', 'nexipilot_enable_summary', 'nexipilot_enable_internal_links', 'nexipilot_faq_position', 'nexipilot_summary_position', 'nexipilot_enable_debug_logging', 'nexipilot_enable_external_ai_sharing', 'nexipilot_external_ai_position', 'nexipilot_external_ai_chatgpt', 'nexipilot_external_ai_claude', 'nexipilot_external_ai_perplexity', 'nexipilot_external_ai_grok', 'nexipilot_external_ai_copilot', 'nexipilot_external_ai_google', 'nexipilot_external_ai_heading', 'nexipilot_openai_validation', 'nexipilot_claude_validation', 'nexipilot_gemini_validation', 'nexipilot_grok_validation');
DELETE FROM wp_options WHERE option_name LIKE 'nexipilot_external_ai_%';
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE 'nexipilot_faq_%';
DELETE FROM wp_options WHERE option_name LIKE 'nexipilot_summary_%';
DELETE FROM wp_options WHERE option_name LIKE 'nexipilot_links_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nexipilot_faq_enabled', '_nexipilot_faq_display_style', '_nexipilot_faqs');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nexipilot_faq_enabled', '_nexipilot_faq_display_style', '_nexipilot_faqs');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nexipilot_faq_enabled', '_nexipilot_faq_display_style', '_nexipilot_faqs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nexipilot_faq_enabled', '_nexipilot_faq_display_style', '_nexipilot_faqs');

