-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cms_tpv_show_promo', 'cms_tpv_options', 'cms_tpv_show_annoying_little_box', 'cms_tpv_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edit_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edit_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edit_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edit_last');

