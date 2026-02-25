-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('postpeek_activated', 'postpeek_settings_visited', 'postpeek_rating_notice', 'postpeek_options');

