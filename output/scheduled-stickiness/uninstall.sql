-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mknu_sticky_date', 'mknu_unsticky_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('mknu_sticky_date', 'mknu_unsticky_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('mknu_sticky_date', 'mknu_unsticky_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mknu_sticky_date', 'mknu_unsticky_date');

