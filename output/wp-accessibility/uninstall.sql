-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rta_from_nav_menu', 'rta_from_page_lists', 'rta_from_category_lists', 'rta_from_archive_links', 'rta_from_tag_clouds', 'rta_from_category_links', 'rta_from_post_edit_links', 'rta_from_edit_comment_links', 'wpa_installed', 'wpa_version', 'asl_enable', 'asl_content', 'asl_navigation', 'asl_sitemap', 'asl_extra_target', 'asl_extra_text', 'asl_visible', 'asl_styles_focus', 'asl_styles_passive', 'wpa_lang', 'wpa_target', 'wpa_search', 'wpa_tabindex', 'wpa_more', 'wpa_continue', 'wpa_toolbar', 'wpa_diagnostics', 'wpa_longdesc', 'wpa_show_alt', 'wpa_underline', 'wpa_videos', 'wpa_insert_roles', 'wpa_focus', 'wpa_focus_color', 'wpa_complementary_container', 'wpa_search_alt', 'wpa_disable_fullscreen', 'wpa_disable_file_embed', 'wpa_allow_h1', 'wpa_track_stats', 'wpa_disable_logout', 'wpa_longdesc_featured', 'wpa_viewport', 'wpa_labels', 'wpa_lang_attributes', 'wpa_remove_titles', 'asl_default_styles', 'asl_styles', 'wpa_post_types', 'wpa_toolbar_size');
DELETE FROM wp_options WHERE option_name IN ('wpa_alternate_fontsize', 'wpa_widget_toolbar', 'wpa_toolbar_gs', 'wpa_toolbar_fs', 'wpa_toolbar_ct', 'wpa_toolbar_default', 'wpa_toolbar_right', 'wpa_toolbar_mobile', 'wpa_show_playground_intro');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_no_alt', '_wpa_event', '_wpa_old_event', '_wpa_browser', '_wpa_post_id', '_wpa_stat_id', '_wpa_content_summary');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_no_alt', '_wpa_event', '_wpa_old_event', '_wpa_browser', '_wpa_post_id', '_wpa_stat_id', '_wpa_content_summary');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_no_alt', '_wpa_event', '_wpa_old_event', '_wpa_browser', '_wpa_post_id', '_wpa_stat_id', '_wpa_content_summary');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_no_alt', '_wpa_event', '_wpa_old_event', '_wpa_browser', '_wpa_post_id', '_wpa_stat_id', '_wpa_content_summary');

