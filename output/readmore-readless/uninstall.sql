-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rmrl_meta_box_text', 'rmrl_meta_box_check_box');
DELETE FROM wp_usermeta WHERE meta_key IN ('rmrl_meta_box_text', 'rmrl_meta_box_check_box');
DELETE FROM wp_termmeta WHERE meta_key IN ('rmrl_meta_box_text', 'rmrl_meta_box_check_box');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rmrl_meta_box_text', 'rmrl_meta_box_check_box');

