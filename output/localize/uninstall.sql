-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('localize_lang', 'localize_lang_version', 'localize_versions', 'localize_locale_data');

