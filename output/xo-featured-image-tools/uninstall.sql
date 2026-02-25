-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xo_featured_image_tools_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata', '_thumbnail_id', 'disable_featured_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata', '_thumbnail_id', 'disable_featured_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata', '_thumbnail_id', 'disable_featured_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata', '_thumbnail_id', 'disable_featured_image');

