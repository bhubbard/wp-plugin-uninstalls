-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'popupmeta_pop_sub_title', 'popup_colorpicker', 'popup_text_colorpicker', 'popupmeta_pop_button', 'popupmeta_pop_shortcode', 'button_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'popupmeta_pop_sub_title', 'popup_colorpicker', 'popup_text_colorpicker', 'popupmeta_pop_button', 'popupmeta_pop_shortcode', 'button_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'popupmeta_pop_sub_title', 'popup_colorpicker', 'popup_text_colorpicker', 'popupmeta_pop_button', 'popupmeta_pop_shortcode', 'button_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'popupmeta_pop_sub_title', 'popup_colorpicker', 'popup_text_colorpicker', 'popupmeta_pop_button', 'popupmeta_pop_shortcode', 'button_type');

