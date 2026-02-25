-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic-editor-allow-users', 'classic-editor-replace');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tb_builder_elements', 'settings', '_tb_custom_layout', '_tb_builder_styles', '_wp_page_template', '_tb_builder_sections', '_tb_builder_plugin_version_created', '_tb_builder_plugin_version_saved', '_tb_builder_framework_version_created', '_tb_builder_framework_version_saved', 'classic-editor-remember', 'elements', 'type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tb_builder_elements', 'settings', '_tb_custom_layout', '_tb_builder_styles', '_wp_page_template', '_tb_builder_sections', '_tb_builder_plugin_version_created', '_tb_builder_plugin_version_saved', '_tb_builder_framework_version_created', '_tb_builder_framework_version_saved', 'classic-editor-remember', 'elements', 'type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tb_builder_elements', 'settings', '_tb_custom_layout', '_tb_builder_styles', '_wp_page_template', '_tb_builder_sections', '_tb_builder_plugin_version_created', '_tb_builder_plugin_version_saved', '_tb_builder_framework_version_created', '_tb_builder_framework_version_saved', 'classic-editor-remember', 'elements', 'type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tb_builder_elements', 'settings', '_tb_custom_layout', '_tb_builder_styles', '_wp_page_template', '_tb_builder_sections', '_tb_builder_plugin_version_created', '_tb_builder_plugin_version_saved', '_tb_builder_framework_version_created', '_tb_builder_framework_version_saved', 'classic-editor-remember', 'elements', 'type');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_tb_builder_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_tb_builder_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_tb_builder_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tb_builder_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tb-nag-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tb-nag-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tb-nag-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tb-nag-%';

