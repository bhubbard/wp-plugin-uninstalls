-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('updatepress_floating_widget', 'updatepress_floating_widget_delay', 'updatepress_recent_days', 'updatepress_display_rule', 'updatepress_selected_pages', 'updatepress_display_count', 'updatepress_custom_count', 'updatepress_sort_order', 'updatepress_tag_enabled', 'updatepress_tag_text', 'updatepress_tag_color', 'updatepress_widget_position', 'updatepress_private_mode', 'updatepress_uninstall_data');
DELETE FROM wp_options WHERE option_name LIKE 'updatepress_%';
DELETE FROM wp_options WHERE option_name LIKE '%_count';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tag_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('tag_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('tag_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tag_color');

