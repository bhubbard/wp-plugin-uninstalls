-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('modern_fields_shorthand_functions', 'modern_fields_color_palette', 'modern_fields_test');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mf_location', 'mf_scope', 'mf_targets', 'mf_roles', 'mf_settings', 'mf_position', 'mf_cpt', 'fields_count', '_wp_attachment_image_alt', 'first_name', 'last_name', 'mf_group_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('mf_location', 'mf_scope', 'mf_targets', 'mf_roles', 'mf_settings', 'mf_position', 'mf_cpt', 'fields_count', '_wp_attachment_image_alt', 'first_name', 'last_name', 'mf_group_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('mf_location', 'mf_scope', 'mf_targets', 'mf_roles', 'mf_settings', 'mf_position', 'mf_cpt', 'fields_count', '_wp_attachment_image_alt', 'first_name', 'last_name', 'mf_group_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mf_location', 'mf_scope', 'mf_targets', 'mf_roles', 'mf_settings', 'mf_position', 'mf_cpt', 'fields_count', '_wp_attachment_image_alt', 'first_name', 'last_name', 'mf_group_id');

