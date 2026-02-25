-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbvcc_auto_slide', 'cbvcc_slide_speed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'cbvcc_logo_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'cbvcc_logo_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'cbvcc_logo_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'cbvcc_logo_url');

