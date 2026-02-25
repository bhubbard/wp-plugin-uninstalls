-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsm_wrap_width', 'wpsm_background', 'wpsm_background_hover', 'wpsm_font_color', 'wpsm_font_color_hover', 'wpsm_logo', 'wpsm_social_btns', 'wpsm_facebook', 'wpsm_twitter');

