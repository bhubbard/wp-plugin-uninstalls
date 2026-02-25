-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ignore_bti79_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_icl_lang_duplicate_of');
DELETE FROM wp_usermeta WHERE meta_key IN ('_icl_lang_duplicate_of');
DELETE FROM wp_termmeta WHERE meta_key IN ('_icl_lang_duplicate_of');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_icl_lang_duplicate_of');

