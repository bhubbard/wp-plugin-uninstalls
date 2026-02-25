-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_advsp_post_pos', '_advsp_content', '_advsp_class', '_advsp_pos', '_advsp_hp', '_advsp_sticky');
DELETE FROM wp_usermeta WHERE meta_key IN ('_advsp_post_pos', '_advsp_content', '_advsp_class', '_advsp_pos', '_advsp_hp', '_advsp_sticky');
DELETE FROM wp_termmeta WHERE meta_key IN ('_advsp_post_pos', '_advsp_content', '_advsp_class', '_advsp_pos', '_advsp_hp', '_advsp_sticky');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_advsp_post_pos', '_advsp_content', '_advsp_class', '_advsp_pos', '_advsp_hp', '_advsp_sticky');

