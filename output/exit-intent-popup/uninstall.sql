-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exitpo_enable', 'exitpo_background_color', 'exitpo_background_image', 'exitpo_text_color', 'exitpo_font_family', 'exitpo_content_font_family', 'exitpo_font_weight', 'exitpo_content_font_weight', 'exitpo_animation', 'exitpo_position', 'exitpo_delay', 'exitpo_message', 'exitpo_discount_code', 'exitpo_discount_text_color', 'exitpo_cross_button', 'exitpo_overlay_opacity', 'exitpo_google_font', 'exitpo_content_google_font', 'exitpo_cta_enable', 'exitpo_cta_text', 'exitpo_cta_url', 'exitpo_cta_target', 'exitpo_cta_bg_color', 'exitpo_cta_text_color', 'exitpo_cta_font_family', 'exitpo_cta_font_weight', 'exitpo_cta_google_font', 'exitpo_cta_font_size', 'exitpo_cta_border_radius', 'exitpo_cta_border_width', 'exitpo_cta_border_color', 'exitpo_cta_padding', 'exitpo_show_discount');

