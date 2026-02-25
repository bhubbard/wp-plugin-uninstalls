-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fx_photo_tag_activation_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('image_id', 'tags', 'color_scheme');
DELETE FROM wp_usermeta WHERE meta_key IN ('image_id', 'tags', 'color_scheme');
DELETE FROM wp_termmeta WHERE meta_key IN ('image_id', 'tags', 'color_scheme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('image_id', 'tags', 'color_scheme');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tag-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tag-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tag-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tag-%';

