-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elcwg_enable_carousel', 'elcwg_carousel_autoplay', 'elcwg_carousel_loop', 'elcwg_carousel_autoplay_delay', 'elcwg_text_animation_delay', 'elcwg_caption_font_size');

