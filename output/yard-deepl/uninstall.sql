-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ydpl_disable_deepl_translation_cache');
DELETE FROM wp_usermeta WHERE meta_key IN ('ydpl_disable_deepl_translation_cache');
DELETE FROM wp_termmeta WHERE meta_key IN ('ydpl_disable_deepl_translation_cache');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ydpl_disable_deepl_translation_cache');

