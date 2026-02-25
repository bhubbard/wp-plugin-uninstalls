-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frenglish_cache_salt', 'frenglish_server_side_translations', 'frenglish_api_key', 'frenglish_supported_languages', 'frenglish_origin_language', 'frenglish_config_fetched_at', 'frenglish_excluded_translation_blocks', 'frenglish_config_rev', 'frenglish_cache_keys');

