-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gutenify_global_style', 'gutenify_site_options', 'gutenify_settings', 'downloaded_font_files', 'global_styles', 'gutenberg_global_styles', 'gutenify_remote_templates', 'gutenify_remote_template_kits', 'gutenify_demo_categories', 'gutenify_demo_import_list', '_transient_pt_importer_data');
DELETE FROM wp_options WHERE option_name LIKE '%_site_options';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_global_style';
DELETE FROM wp_options WHERE option_name LIKE '%_global_style';
DELETE FROM wp_options WHERE option_name LIKE 'global_styles_%';
DELETE FROM wp_options WHERE option_name LIKE 'gutenberg_global_styles_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kit_name', '_wp_page_template', 'kit_templates', 'kit_parts', 'kit_navigations');
DELETE FROM wp_usermeta WHERE meta_key IN ('kit_name', '_wp_page_template', 'kit_templates', 'kit_parts', 'kit_navigations');
DELETE FROM wp_termmeta WHERE meta_key IN ('kit_name', '_wp_page_template', 'kit_templates', 'kit_parts', 'kit_navigations');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kit_name', '_wp_page_template', 'kit_templates', 'kit_parts', 'kit_navigations');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_demo_imported';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_demo_imported';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_demo_imported';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_demo_imported';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_demo_imported_data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_demo_imported_data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_demo_imported_data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_demo_imported_data';

