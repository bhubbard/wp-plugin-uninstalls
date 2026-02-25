-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcf-fields', 'wpcf-termmeta', 'wpcf-usermeta', 'wpcf-custom-types', 'wpcf-custom-taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_types_repeatable_field_group_post_type', '_wp_types_group_fields', 'toolset-post-sortorder', 'meta_box', 'meta_box_id', 'settings', '_wp_types_group_post_types', '_wp_types_associated_taxonomy', '_wp_types_group_showfor', 'fields', 'relationship');
DELETE FROM wp_usermeta WHERE meta_key IN ('_types_repeatable_field_group_post_type', '_wp_types_group_fields', 'toolset-post-sortorder', 'meta_box', 'meta_box_id', 'settings', '_wp_types_group_post_types', '_wp_types_associated_taxonomy', '_wp_types_group_showfor', 'fields', 'relationship');
DELETE FROM wp_termmeta WHERE meta_key IN ('_types_repeatable_field_group_post_type', '_wp_types_group_fields', 'toolset-post-sortorder', 'meta_box', 'meta_box_id', 'settings', '_wp_types_group_post_types', '_wp_types_associated_taxonomy', '_wp_types_group_showfor', 'fields', 'relationship');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_types_repeatable_field_group_post_type', '_wp_types_group_fields', 'toolset-post-sortorder', 'meta_box', 'meta_box_id', 'settings', '_wp_types_group_post_types', '_wp_types_associated_taxonomy', '_wp_types_group_showfor', 'fields', 'relationship');

