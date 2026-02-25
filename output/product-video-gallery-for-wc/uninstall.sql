-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('product_video_gallery_for_wc_embedVideo', 'product_video_gallery_for_wc_thumb_postition', 'product_video_gallery_for_wc_setting', 'product_video_gallery_for_wc_thumb_gap', 'product_video_gallery_for_wc_thumb_img_gap', 'product_video_gallery_for_wc_thumb_img_round', 'product_video_gallery_for_wc_thumb_img_numbers', 'product_video_gallery_for_wc_thumb_nav_button_color', 'product_video_gallery_for_wc_thumb_nav_arrow_color', 'product_video_gallery_for_wc_preload', 'product_video_gallery_for_wc_autoplay', 'product_video_gallery_for_wc_muted', 'product_video_gallery_for_wc_loop', 'product_video_gallery_for_wc_resetOnEnd', 'product_video_gallery_for_wc_enableSmoothSeeking', 'product_video_gallery_for_wc_playsinline', 'product_video_gallery_for_wc_playbackRates', 'product_video_gallery_for_wc_pictureInPicture', 'product_video_gallery_for_wc_bigPlayButton', 'product_video_gallery_for_wc_progressControl', 'product_video_gallery_for_wc_remainingTimeDisplay', 'product_video_gallery_for_wc_displayNegative', 'product_video_gallery_for_wc_volumeControl', 'product_video_gallery_for_wc_fullscreenToggle');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_video_gallery_for_wc_data', '_product_video_gallery_variable_for_wc_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_video_gallery_for_wc_data', '_product_video_gallery_variable_for_wc_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_video_gallery_for_wc_data', '_product_video_gallery_variable_for_wc_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_video_gallery_for_wc_data', '_product_video_gallery_variable_for_wc_data');

