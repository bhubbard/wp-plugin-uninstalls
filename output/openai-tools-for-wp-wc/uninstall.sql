-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_public_ai_tools_task', 'enable_ai_tools_logs', 'openai_tools_comment_count', 'openai_tools_review_count', 'custom_openai_domain', 'deepseek_api_key', 'siliconflow_api_key', 'groq_api_key', 'openai_api_key', 'woocommerce_webhook_deliver_async_disable', 'enable_xml_feeds_generator', 'openai_token', 'siliconflow_custom_model', 'openai_language', 'review_feeds_default_brand', 'ai_tools_default_model');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', 'verified');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', 'verified');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', 'verified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', 'verified');

