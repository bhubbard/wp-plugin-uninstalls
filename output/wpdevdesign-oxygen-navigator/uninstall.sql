-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ct_template_type', 'ct_parent_template', 'ct_builder_shortcodes', 'ct_other_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('ct_template_type', 'ct_parent_template', 'ct_builder_shortcodes', 'ct_other_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('ct_template_type', 'ct_parent_template', 'ct_builder_shortcodes', 'ct_other_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ct_template_type', 'ct_parent_template', 'ct_builder_shortcodes', 'ct_other_template');

