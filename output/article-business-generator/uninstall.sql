-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('artbusgen_lite_groq_api_key', 'artbusgen_lite_groq_model_name', 'artbusgen_lite_article_topic', 'artbusgen_lite_system_prompt', 'artbusgen_lite_category', 'artbusgen_lite_post_status', 'artbusgen_lite_frequency', 'artbusgen_lite_authoritative_site_1', 'artbusgen_lite_is_generating');

