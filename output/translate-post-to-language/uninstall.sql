-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tranpoto_enable_for_posts', 'tranpoto_enable_for_pages', 'tranpoto_target_language', 'tranpoto_google_translate_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_translated_post', '_original_post_id', '_translated_post_id', '_translated_lang');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_translated_post', '_original_post_id', '_translated_post_id', '_translated_lang');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_translated_post', '_original_post_id', '_translated_post_id', '_translated_lang');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_translated_post', '_original_post_id', '_translated_post_id', '_translated_lang');

