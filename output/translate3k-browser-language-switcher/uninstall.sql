-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_translate_options', 'auto_translate_just_activated', 'auto_translate_should_clear_cookies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_translate3k_content_lang');
DELETE FROM wp_usermeta WHERE meta_key IN ('_translate3k_content_lang');
DELETE FROM wp_termmeta WHERE meta_key IN ('_translate3k_content_lang');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_translate3k_content_lang');

