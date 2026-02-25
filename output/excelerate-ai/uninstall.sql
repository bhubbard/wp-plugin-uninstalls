-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('excelerate_ai_api_key', 'excelerate_ai_gpt_content_update_lock');

