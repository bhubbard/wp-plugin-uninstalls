-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uix_slideshow_opt_cssnewcode', 'uix_slideshow_opt_animation', 'uix_slideshow_opt_auto', 'uix_slideshow_opt_effect_duration', 'uix_slideshow_opt_speed', 'uix_slideshow_opt_arr_nav', 'uix_slideshow_opt_paging_nav', 'uix_slideshow_opt_animloop', 'uix_slideshow_opt_drag', 'uix_slideshow_opt_prev_txt', 'uix_slideshow_opt_next_txt', 'uix_slideshow_opt_custom_params');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('uix_slideshow_img', 'uix_slideshow_url', 'uix_slideshow_caption', 'uix_slideshow_button_text', 'uix_slideshow_bcolor', 'uix_slideshow_button_textcolor', 'uix_slideshow_bsize', 'uix_slideshow_target', 'uix_slideshow_title_color', 'uix_slideshow_caption_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('uix_slideshow_img', 'uix_slideshow_url', 'uix_slideshow_caption', 'uix_slideshow_button_text', 'uix_slideshow_bcolor', 'uix_slideshow_button_textcolor', 'uix_slideshow_bsize', 'uix_slideshow_target', 'uix_slideshow_title_color', 'uix_slideshow_caption_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('uix_slideshow_img', 'uix_slideshow_url', 'uix_slideshow_caption', 'uix_slideshow_button_text', 'uix_slideshow_bcolor', 'uix_slideshow_button_textcolor', 'uix_slideshow_bsize', 'uix_slideshow_target', 'uix_slideshow_title_color', 'uix_slideshow_caption_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('uix_slideshow_img', 'uix_slideshow_url', 'uix_slideshow_caption', 'uix_slideshow_button_text', 'uix_slideshow_bcolor', 'uix_slideshow_button_textcolor', 'uix_slideshow_bsize', 'uix_slideshow_target', 'uix_slideshow_title_color', 'uix_slideshow_caption_color');

