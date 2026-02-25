-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advanced_rating_setting', 'advanced_rating_settings', 'rating_theme_settings', 'rating_db_version');

