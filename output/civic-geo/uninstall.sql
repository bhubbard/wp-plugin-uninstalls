-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('google_civic_key', 'congress_google_map_api_key', 'congress_cache', 'congress_cache_time', 'congress_options', 'congress_redirect_url', 'congress_shortcodes', 'congress_themes', 'congress_photos_last_modified');

