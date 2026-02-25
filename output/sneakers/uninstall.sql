-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_cmb_post_multicheckbox', '_cmb_test_image', '_cmb_area_radio', '_cmb_test_textsmall', '_cmb_content_font_color', '_cmb_test_shortcode', '_cmb_strip_color', '_cmb_font_color', '_cmb_strip_icon', '_cmb_strip_icon_color', '_cmb_postype_multicheckbox', '_cmb_front_checkbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_cmb_post_multicheckbox', '_cmb_test_image', '_cmb_area_radio', '_cmb_test_textsmall', '_cmb_content_font_color', '_cmb_test_shortcode', '_cmb_strip_color', '_cmb_font_color', '_cmb_strip_icon', '_cmb_strip_icon_color', '_cmb_postype_multicheckbox', '_cmb_front_checkbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_cmb_post_multicheckbox', '_cmb_test_image', '_cmb_area_radio', '_cmb_test_textsmall', '_cmb_content_font_color', '_cmb_test_shortcode', '_cmb_strip_color', '_cmb_font_color', '_cmb_strip_icon', '_cmb_strip_icon_color', '_cmb_postype_multicheckbox', '_cmb_front_checkbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_cmb_post_multicheckbox', '_cmb_test_image', '_cmb_area_radio', '_cmb_test_textsmall', '_cmb_content_font_color', '_cmb_test_shortcode', '_cmb_strip_color', '_cmb_font_color', '_cmb_strip_icon', '_cmb_strip_icon_color', '_cmb_postype_multicheckbox', '_cmb_front_checkbox');

