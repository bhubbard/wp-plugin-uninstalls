-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mesmerize_companion_filtered_defaults', 'sidebars_widgets', 'msm_companion_start_source', 'msm_companion_activation_time', 'msm_companion_pro_activation_time', 'cp_initialize_notifications', 'widget_block', 'active_sitewide_plugins', 'feature_popup_demo_import_disabled', 'rewrite_rules', 'extendthemes_load_data-sections', 'extendthemes_load_data-headers', 'mesmerize_menu_items_keys_match', 'mesmerize_ocdi_import_page_mod', 'mesmerize_ocdi_import_wc_categories', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_companion_old_show_on_front';
DELETE FROM wp_options WHERE option_name LIKE '%_companion_old_page_on_front';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'is_mesmerize_front_page', '_wp_attachment_is_custom_header');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'is_mesmerize_front_page', '_wp_attachment_is_custom_header');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'is_mesmerize_front_page', '_wp_attachment_is_custom_header');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'is_mesmerize_front_page', '_wp_attachment_is_custom_header');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-show-default-editor';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-show-default-editor';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-show-default-editor';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-show-default-editor';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_front_page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_front_page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_front_page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_front_page';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_maintainable_page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_maintainable_page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_maintainable_page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_maintainable_page';

