-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grplugin_api_key', 'grplugin_place_id', 'grplugin_review_count', 'grplugin_ai_review_summary', 'grplugin_openai_key');

