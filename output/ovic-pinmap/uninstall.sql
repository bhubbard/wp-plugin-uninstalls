-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ovic_pinmap_image', 'ovic_pinmap_pins', 'ovic_pinmap_settings', '_wpb_post_custom_css', '_wpb_shortcodes_custom_css', '_Ovic_Shortcode_custom_css', '_Ovic_VC_Shortcode_Custom_Css');
DELETE FROM wp_usermeta WHERE meta_key IN ('ovic_pinmap_image', 'ovic_pinmap_pins', 'ovic_pinmap_settings', '_wpb_post_custom_css', '_wpb_shortcodes_custom_css', '_Ovic_Shortcode_custom_css', '_Ovic_VC_Shortcode_Custom_Css');
DELETE FROM wp_termmeta WHERE meta_key IN ('ovic_pinmap_image', 'ovic_pinmap_pins', 'ovic_pinmap_settings', '_wpb_post_custom_css', '_wpb_shortcodes_custom_css', '_Ovic_Shortcode_custom_css', '_Ovic_VC_Shortcode_Custom_Css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ovic_pinmap_image', 'ovic_pinmap_pins', 'ovic_pinmap_settings', '_wpb_post_custom_css', '_wpb_shortcodes_custom_css', '_Ovic_Shortcode_custom_css', '_Ovic_VC_Shortcode_Custom_Css');

