-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qtranslate_default_language', 'qtranslate_enabled_languages', 'qtranslate_term_name');

