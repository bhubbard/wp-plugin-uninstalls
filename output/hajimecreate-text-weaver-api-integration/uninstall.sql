-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hajimecreate_text_weaver_environment_settings', 'hajimecreate_text_weaver_config', 'hajimecreate_text_weaver_api_url', 'hajimecreate_text_weaver_default_cache_time', '_transient_keys', 'hajimecreate_text_weaver_api_key', 'hajimecreate_text_weaver_logs');

