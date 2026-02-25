-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('killbait_apikey', 'killbait_language', 'killbait_categories');

