-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mice_widget_id', 'mice_style_color', 'mice_button_alignment', 'mice_source', 'mice_button_horizontal_padding', 'mice_button_vertical_padding', 'mice_enable_button');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mice_widget_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('mice_widget_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('mice_widget_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mice_widget_id');

