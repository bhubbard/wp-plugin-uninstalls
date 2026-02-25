-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gb_img', 'gb_group', 'gb_index', 'gb_effect', 'gb_active', 'gb_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('gb_img', 'gb_group', 'gb_index', 'gb_effect', 'gb_active', 'gb_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('gb_img', 'gb_group', 'gb_index', 'gb_effect', 'gb_active', 'gb_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gb_img', 'gb_group', 'gb_index', 'gb_effect', 'gb_active', 'gb_link');

