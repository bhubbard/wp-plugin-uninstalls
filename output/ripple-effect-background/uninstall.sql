-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ripple_effect-enable_front_page', 'ripple_effect-enable_blog_page', 'animated_text', 'first_text', 'second_text', 'select_img_ripple_effect', 'btn1_label', 'btn1_link', 'btn2_label', 'btn2_link');

