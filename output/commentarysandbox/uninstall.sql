-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('commentpress_theme_settings', 'bp_groupblog_blog_defaults_options', 'default_post_edit_rows', 'commentpress_sidebars_widgets', 'sidebars_widgets', 'commentpress_options', 'cp_options', 'cp_page_for_posts', 'commentpress_page_for_posts', 'cp_show_on_front', 'commentpress_show_on_front', 'cp_page_on_front', 'commentpress_page_on_front', 'cp_page_comments', 'commentpress_page_comments', 'cp_theme_settings', 'theme_mods_commentpress', 'cp_para_comments_enabled', 'cp_show_posts_or_pages_in_toc', 'cp_show_subpages', 'cp_toc_chapter_is_page', 'cp_comment_editor', 'cp_promote_reading', 'cp_title_visibility', 'cp_header_bg_colour', 'cp_js_scroll_speed', 'cp_min_page_width', 'cp_default_skin', 'cp_default_left_position', 'cp_default_top_position', 'cp_default_width', 'cp_default_height', 'cp_allow_users_to_iconize', 'cp_allow_users_to_minimize', 'cp_allow_users_to_resize', 'cp_allow_users_to_drag', 'cp_allow_users_to_save_position', 'cp_excerpt_length', 'cp_para_comments_live', 'cp_special_pages', 'cp_welcome_page', 'cp_general_comments_page', 'cp_all_comments_page', 'cp_comments_by_page', 'cp_blog_page', 'active_sitewide_plugins', 'cpmu_options', 'cpmu_version', 'registration', 'commentpress_version');
DELETE FROM wp_options WHERE option_name LIKE 'commentpress_%';
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Notes', '_wp_editor_test_3', '_wp_editor_test_4', '_wp_editor_test_1', '_wp_editor_test_2', '_cp_post_type_override', 'Vocabulary');
DELETE FROM wp_usermeta WHERE meta_key IN ('Notes', '_wp_editor_test_3', '_wp_editor_test_4', '_wp_editor_test_1', '_wp_editor_test_2', '_cp_post_type_override', 'Vocabulary');
DELETE FROM wp_termmeta WHERE meta_key IN ('Notes', '_wp_editor_test_3', '_wp_editor_test_4', '_wp_editor_test_1', '_wp_editor_test_2', '_cp_post_type_override', 'Vocabulary');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Notes', '_wp_editor_test_3', '_wp_editor_test_4', '_wp_editor_test_1', '_wp_editor_test_2', '_cp_post_type_override', 'Vocabulary');

