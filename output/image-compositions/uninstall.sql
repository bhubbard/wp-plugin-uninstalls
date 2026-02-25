-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mdt_image_composition_source_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('mdt_image_composition_source_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('mdt_image_composition_source_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mdt_image_composition_source_id');

