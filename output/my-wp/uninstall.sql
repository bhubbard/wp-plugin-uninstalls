-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('log', 'blog_id', 'user_id', 'request_uri', '_wp_attachment_image_alt', 'item_location');
DELETE FROM wp_usermeta WHERE meta_key IN ('log', 'blog_id', 'user_id', 'request_uri', '_wp_attachment_image_alt', 'item_location');
DELETE FROM wp_termmeta WHERE meta_key IN ('log', 'blog_id', 'user_id', 'request_uri', '_wp_attachment_image_alt', 'item_location');
DELETE FROM wp_commentmeta WHERE meta_key IN ('log', 'blog_id', 'user_id', 'request_uri', '_wp_attachment_image_alt', 'item_location');

