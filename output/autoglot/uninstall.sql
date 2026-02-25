-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autoglot_translation_default_language', 'autoglot_setup_complete', 'autoglot_translation_API_key', 'autoglot_translation_enable', 'autoglot_admin_notice', 'woocommerce_permalinks', 'autoglot_wpcount', 'autoglot_countwords', 'autoglot_countactivewords', 'autoglot_stats_updated', 'autoglot_translation_adminonly', 'autoglot_translation_floatbox', 'autoglot_translation_popup_switcher', 'autoglot_translation_floatbox_position', 'autoglot_translation_language_names', 'autoglot_translation_hreflangs', 'autoglot_translation_comments_translate ', 'autoglot_translation_comments_same_language', 'autoglot_translation_custom_titles', 'autoglot_translation_skip_caching', 'autoglot_translation_widget_signature', 'autoglot_translation_translate_urls', 'autoglot_translation_editors_edit', 'autoglot_translation_advanced_search', 'autoglot_translation_sitemap_priority', 'autoglot_translation_repeat_balance', 'autoglot_translation_active_languages', 'autoglot_translation_manual_strings', 'autoglot_translation_add_lngcode', 'text_replacement_settings_errors');
DELETE FROM wp_options WHERE option_name LIKE 'autoglot_translation_language_flags_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('autoglot_hide_translation_plugins_notice_until', 'autoglot_comment_language', '_autoglot_textrepl_meta', '_autoglot_menu_item');
DELETE FROM wp_usermeta WHERE meta_key IN ('autoglot_hide_translation_plugins_notice_until', 'autoglot_comment_language', '_autoglot_textrepl_meta', '_autoglot_menu_item');
DELETE FROM wp_termmeta WHERE meta_key IN ('autoglot_hide_translation_plugins_notice_until', 'autoglot_comment_language', '_autoglot_textrepl_meta', '_autoglot_menu_item');
DELETE FROM wp_commentmeta WHERE meta_key IN ('autoglot_hide_translation_plugins_notice_until', 'autoglot_comment_language', '_autoglot_textrepl_meta', '_autoglot_menu_item');

