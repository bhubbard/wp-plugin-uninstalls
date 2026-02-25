-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qtranslate_language_names', 'qtranslate_enabled_languages', 'qtranslate_default_language', 'qtranslate_term_name');
DELETE FROM wp_options WHERE option_name LIKE 'qtranslate_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_qts_slug_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_qts_slug_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_qts_slug_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qts_slug_%';

