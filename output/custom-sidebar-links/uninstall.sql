-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vimo_csbl_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vimo_csbl_title', 'vimo_csbl_menu', 'vimo_csbl_selectedPages');
DELETE FROM wp_usermeta WHERE meta_key IN ('vimo_csbl_title', 'vimo_csbl_menu', 'vimo_csbl_selectedPages');
DELETE FROM wp_termmeta WHERE meta_key IN ('vimo_csbl_title', 'vimo_csbl_menu', 'vimo_csbl_selectedPages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vimo_csbl_title', 'vimo_csbl_menu', 'vimo_csbl_selectedPages');

