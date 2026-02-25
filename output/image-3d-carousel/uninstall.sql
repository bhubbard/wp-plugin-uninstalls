-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('image_3d_cl_repeat_group', 'image_3d_heading', 'image_3d_image', 'image_3d_width', 'image_3d_height', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('image_3d_cl_repeat_group', 'image_3d_heading', 'image_3d_image', 'image_3d_width', 'image_3d_height', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('image_3d_cl_repeat_group', 'image_3d_heading', 'image_3d_image', 'image_3d_width', 'image_3d_height', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('image_3d_cl_repeat_group', 'image_3d_heading', 'image_3d_image', 'image_3d_width', 'image_3d_height', '_wp_page_template');

