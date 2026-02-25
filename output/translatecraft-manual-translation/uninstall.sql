-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tcmt_language_switcher_options', 'tcmt_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tcmt_language', '_tcmt_original_post', '_tcmt_translated_post', '_tcmt_lang');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tcmt_language', '_tcmt_original_post', '_tcmt_translated_post', '_tcmt_lang');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tcmt_language', '_tcmt_original_post', '_tcmt_translated_post', '_tcmt_lang');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tcmt_language', '_tcmt_original_post', '_tcmt_translated_post', '_tcmt_lang');

