-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('soro_post_author', 'soro_post_category', 'soro_indexnow_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_soro_featured_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_soro_featured_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_soro_featured_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_soro_featured_image');

