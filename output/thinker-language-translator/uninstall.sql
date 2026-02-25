-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thinker_translator_cache_wp_footer', 'thinker_translator_cache_shortcode', 'thinker_translator_settings', 'thinker_translator_db_version');

