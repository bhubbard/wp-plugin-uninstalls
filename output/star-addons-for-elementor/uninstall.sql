-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('new_settings2', 'new_settings4', 'new_settings1', 'new_settings3', 'new_settings5', 'new_settings6');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('showcase-taxonomy-image-id', 'showcase-tag-image-id', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('showcase-taxonomy-image-id', 'showcase-tag-image-id', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('showcase-taxonomy-image-id', 'showcase-tag-image-id', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('showcase-taxonomy-image-id', 'showcase-tag-image-id', 'thumbnail_id');

