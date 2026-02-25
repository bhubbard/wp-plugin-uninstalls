-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bb_ai_content_generator_encryption_key', 'bb_ai_content_generator_api_key', 'bb_ai_content_generator_api_usage_stats', 'bb_ai_content_generator_temp_data');

