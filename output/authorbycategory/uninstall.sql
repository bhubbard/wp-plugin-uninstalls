-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autoauthor_category_user_map', 'autoauthor_access_control');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_autoauthor_manual_choice_hash', '_autoauthor_manual_author');
DELETE FROM wp_usermeta WHERE meta_key IN ('_autoauthor_manual_choice_hash', '_autoauthor_manual_author');
DELETE FROM wp_termmeta WHERE meta_key IN ('_autoauthor_manual_choice_hash', '_autoauthor_manual_author');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_autoauthor_manual_choice_hash', '_autoauthor_manual_author');

