-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mslm_artist_name', 'mslm_subtitle', 'mslm_show_header_footer', 'mslm_pixel_id', 'mslm_concert_ids', 'mslm_bg_color', 'mslm_btn_bg_color', 'mslm_text_color', 'mslm_hide_empty_logo', 'mslm_music_links', 'mslm_artist_links');
DELETE FROM wp_usermeta WHERE meta_key IN ('mslm_artist_name', 'mslm_subtitle', 'mslm_show_header_footer', 'mslm_pixel_id', 'mslm_concert_ids', 'mslm_bg_color', 'mslm_btn_bg_color', 'mslm_text_color', 'mslm_hide_empty_logo', 'mslm_music_links', 'mslm_artist_links');
DELETE FROM wp_termmeta WHERE meta_key IN ('mslm_artist_name', 'mslm_subtitle', 'mslm_show_header_footer', 'mslm_pixel_id', 'mslm_concert_ids', 'mslm_bg_color', 'mslm_btn_bg_color', 'mslm_text_color', 'mslm_hide_empty_logo', 'mslm_music_links', 'mslm_artist_links');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mslm_artist_name', 'mslm_subtitle', 'mslm_show_header_footer', 'mslm_pixel_id', 'mslm_concert_ids', 'mslm_bg_color', 'mslm_btn_bg_color', 'mslm_text_color', 'mslm_hide_empty_logo', 'mslm_music_links', 'mslm_artist_links');

