-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmwam_options', 'wicked_folders_pro_license_key', 'wicked_folders_pro_license_data', 'wicked_folders_show_folder_contents_in_tree_view', 'wicked_folders_sync_upload_folder_dropdown', 'wicked_folders_include_children', 'wicked_folders_include_attachment_children', 'wicked_folders_show_hierarchy_in_folder_column', 'wicked_folders_show_unassigned_folder', 'wicked_folders_show_folder_search', 'wicked_folders_show_item_counts', 'wicked_folders_show_breadcrumbs', 'wicked_folders_enable_ajax_nav', 'wicked_folders_enable_context_menus', 'wicked_folders_colors', 'wicked_folders_enable_lazy_dynamic_folders', 'wicked_folders_post_types', 'wicked_folders_dynamic_folder_post_types', 'wicked_folders_taxonomies', 'wicked_folders_tax_name_migration_done', 'wicked_folders_db_version', 'wicked_folders_enable_folder_pages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wf_order', 'wf_owner_id', 'wf_color', 'wicked_folders_plugin_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('wf_order', 'wf_owner_id', 'wf_color', 'wicked_folders_plugin_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('wf_order', 'wf_owner_id', 'wf_color', 'wicked_folders_plugin_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wf_order', 'wf_owner_id', 'wf_color', 'wicked_folders_plugin_state');

