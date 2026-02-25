-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('keydatas_password', 'keydatas_title_unique', 'keydatas_tbk_link_enble');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tbk_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('tbk_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('tbk_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tbk_link');

