-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Activated_Plugin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hide_section_title', '_show_hide_links', '_title_bg_clr', '_desc_bg_clr', '_title_font_clr', '_desc_font_clr', 'custom_user_css', 'custom_user_js', '_total_all_data_value');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hide_section_title', '_show_hide_links', '_title_bg_clr', '_desc_bg_clr', '_title_font_clr', '_desc_font_clr', 'custom_user_css', 'custom_user_js', '_total_all_data_value');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hide_section_title', '_show_hide_links', '_title_bg_clr', '_desc_bg_clr', '_title_font_clr', '_desc_font_clr', 'custom_user_css', 'custom_user_js', '_total_all_data_value');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hide_section_title', '_show_hide_links', '_title_bg_clr', '_desc_bg_clr', '_title_font_clr', '_desc_font_clr', 'custom_user_css', 'custom_user_js', '_total_all_data_value');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_title_meta_key_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_title_meta_key_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_title_meta_key_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_title_meta_key_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_content_editor_meta_key_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_content_editor_meta_key_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_content_editor_meta_key_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_content_editor_meta_key_%';

