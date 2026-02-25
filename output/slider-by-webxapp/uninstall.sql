-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wxas_slide_settings', 'wxas_theme_id', 'wxas_theme_meta', 'wxas_items_list');
DELETE FROM wp_usermeta WHERE meta_key IN ('wxas_slide_settings', 'wxas_theme_id', 'wxas_theme_meta', 'wxas_items_list');
DELETE FROM wp_termmeta WHERE meta_key IN ('wxas_slide_settings', 'wxas_theme_id', 'wxas_theme_meta', 'wxas_items_list');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wxas_slide_settings', 'wxas_theme_id', 'wxas_theme_meta', 'wxas_items_list');

