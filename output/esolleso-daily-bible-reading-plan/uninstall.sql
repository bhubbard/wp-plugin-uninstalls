-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bibldare_schedule_data', 'bibldare_bible_cache_enabled', 'bibldare_bible_language', 'bibldare_bible_version');
DELETE FROM wp_options WHERE option_name LIKE 'bibldare_schedule_day_%';

