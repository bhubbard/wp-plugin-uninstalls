-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tb-nag-layouts-to-posts-no-framework', '_tb_custom_layout', '_tb_builder_elements', 'elements', 'settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('tb-nag-layouts-to-posts-no-framework', '_tb_custom_layout', '_tb_builder_elements', 'elements', 'settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('tb-nag-layouts-to-posts-no-framework', '_tb_custom_layout', '_tb_builder_elements', 'elements', 'settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tb-nag-layouts-to-posts-no-framework', '_tb_custom_layout', '_tb_builder_elements', 'elements', 'settings');

