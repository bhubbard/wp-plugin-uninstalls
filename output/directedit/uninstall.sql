-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('de_text_validation', 'de_menu_editor_enabled', 'de_edit_menu_page', 'de_menu_editor_pages', 'de_menu_editor_de_archive_pages', 'de_menu_editor_de_webforms', 'de_menu_editor_categories', 'de_menu_editor_posts', 'de_smart_urls', 'de_wp_login_redirect', 'de_login_form', 'automatic_updates_key', 'de_options_wp_hooks', 'de_options_custom_page_types');
DELETE FROM wp_options WHERE option_name LIKE 'de_menu_editor_taxonomies_%';
DELETE FROM wp_options WHERE option_name LIKE 'de_menu_editor_posts_%';
DELETE FROM wp_options WHERE option_name LIKE 'de_page_for_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('de_new_page', 'de_slug', 'de_title_not_translated', 'de_post_parent', 'de_title', 'de_description', 'de_navigation_label', 'de_wp_hooks');
DELETE FROM wp_usermeta WHERE meta_key IN ('de_new_page', 'de_slug', 'de_title_not_translated', 'de_post_parent', 'de_title', 'de_description', 'de_navigation_label', 'de_wp_hooks');
DELETE FROM wp_termmeta WHERE meta_key IN ('de_new_page', 'de_slug', 'de_title_not_translated', 'de_post_parent', 'de_title', 'de_description', 'de_navigation_label', 'de_wp_hooks');
DELETE FROM wp_commentmeta WHERE meta_key IN ('de_new_page', 'de_slug', 'de_title_not_translated', 'de_post_parent', 'de_title', 'de_description', 'de_navigation_label', 'de_wp_hooks');

