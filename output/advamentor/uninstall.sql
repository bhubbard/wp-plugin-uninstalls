-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable_advanced_banner', 'disable_advanced_cf7', 'disable_advanced_countdown', 'disable_advanced_counter', 'disable_advanced_fancy_text', 'disable_advanced_image_slider', 'disable_advanced_logo_carousel', 'disable_advanced_testimonial_carousel', 'disable_advanced_flip_carousel');

