-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fls_background_color', 'fls_text_color', 'fls_circle_color', 'fls_circle_active_color', 'fls_slide_1_title', 'flsslider_one_1_link', 'flsslider_one_1_img', 'fls_slide_2_title', 'flsslider_one_2_link', 'flsslider_one_2_img', 'fls_slide_3_title', 'flsslider_one_3_link', 'flsslider_one_3_img', 'fls_slide_4_title', 'flsslider_one_4_link', 'flsslider_one_4_img');

