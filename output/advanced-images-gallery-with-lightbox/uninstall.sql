-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aigwl_shortcode_name', '_wp_attachment_image_alt', 'aigwl_display_layout', 'aigwl_image_hover_effect', 'aigwl_gallery', 'aigwl_enable_effects');
DELETE FROM wp_usermeta WHERE meta_key IN ('aigwl_shortcode_name', '_wp_attachment_image_alt', 'aigwl_display_layout', 'aigwl_image_hover_effect', 'aigwl_gallery', 'aigwl_enable_effects');
DELETE FROM wp_termmeta WHERE meta_key IN ('aigwl_shortcode_name', '_wp_attachment_image_alt', 'aigwl_display_layout', 'aigwl_image_hover_effect', 'aigwl_gallery', 'aigwl_enable_effects');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aigwl_shortcode_name', '_wp_attachment_image_alt', 'aigwl_display_layout', 'aigwl_image_hover_effect', 'aigwl_gallery', 'aigwl_enable_effects');

