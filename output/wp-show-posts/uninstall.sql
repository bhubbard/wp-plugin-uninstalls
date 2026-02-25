-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'wpsp_include_title', 'wpsp_image', 'wpsp_include_date', 'wpsp_include_comments');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'wpsp_include_title', 'wpsp_image', 'wpsp_include_date', 'wpsp_include_comments');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'wpsp_include_title', 'wpsp_image', 'wpsp_include_date', 'wpsp_include_comments');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'wpsp_include_title', 'wpsp_image', 'wpsp_include_date', 'wpsp_include_comments');

