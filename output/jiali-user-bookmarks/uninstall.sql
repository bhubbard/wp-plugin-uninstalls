-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jialiub_singular_label', 'jialiub_plural_label', 'jialiub_action_label', 'jialiub_bookmark_enabled_post_types', 'jialiub_show_label', 'jialiub_show_count', 'jialiub_button_position', 'jialiub_button_color', 'jialiub_button_hover_color', 'jialiub_button_active_color', 'jialiub_font_size');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jialiub_bookmarks_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('jialiub_bookmarks_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('jialiub_bookmarks_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jialiub_bookmarks_count');

