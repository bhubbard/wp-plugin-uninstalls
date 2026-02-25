-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mesh_settings', 'mesh_version', 'mesh_activation', 'mesh_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mesh_column_width', '_mesh_css_class', '_mesh_offset', '_mesh_centered', 'show_mesh_template_panel', '_mesh_template', '_thumbnail_id', 'dismissed_wp_pointers', '_mesh_template_layout', '_mesh_template_original', '_mesh_section_id', '_mesh_lp_equal', '_mesh_row_class', '_mesh_collapse', '_mesh_title_display', '_mesh_push_pull');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mesh_column_width', '_mesh_css_class', '_mesh_offset', '_mesh_centered', 'show_mesh_template_panel', '_mesh_template', '_thumbnail_id', 'dismissed_wp_pointers', '_mesh_template_layout', '_mesh_template_original', '_mesh_section_id', '_mesh_lp_equal', '_mesh_row_class', '_mesh_collapse', '_mesh_title_display', '_mesh_push_pull');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mesh_column_width', '_mesh_css_class', '_mesh_offset', '_mesh_centered', 'show_mesh_template_panel', '_mesh_template', '_thumbnail_id', 'dismissed_wp_pointers', '_mesh_template_layout', '_mesh_template_original', '_mesh_section_id', '_mesh_lp_equal', '_mesh_row_class', '_mesh_collapse', '_mesh_title_display', '_mesh_push_pull');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mesh_column_width', '_mesh_css_class', '_mesh_offset', '_mesh_centered', 'show_mesh_template_panel', '_mesh_template', '_thumbnail_id', 'dismissed_wp_pointers', '_mesh_template_layout', '_mesh_template_original', '_mesh_section_id', '_mesh_lp_equal', '_mesh_row_class', '_mesh_collapse', '_mesh_title_display', '_mesh_push_pull');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_mesh_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_mesh_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_mesh_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_mesh_%';

