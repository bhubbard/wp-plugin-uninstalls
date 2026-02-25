-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_schema_wp_default_image_id', '_schema_ref', '_schema_default_image_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_schema_wp_default_image_id', '_schema_ref', '_schema_default_image_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_schema_wp_default_image_id', '_schema_ref', '_schema_default_image_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_schema_wp_default_image_id', '_schema_ref', '_schema_default_image_id');

