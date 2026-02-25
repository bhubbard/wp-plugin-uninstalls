-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_favorite_color', '_custom_border', '_custom_border_type', '_custom_border-color', '_custom_images', '_custom_height', '_custom_width', '_custom_padding', '_custom_centerSlider', '_custom_height_Pictures', '_custom_width_Pictures', '_custom_gap', '_custom_blackAndWhite', '_custom_speed', '_custom_stopSlider', '_custom_slidesPerView');
DELETE FROM wp_usermeta WHERE meta_key IN ('_favorite_color', '_custom_border', '_custom_border_type', '_custom_border-color', '_custom_images', '_custom_height', '_custom_width', '_custom_padding', '_custom_centerSlider', '_custom_height_Pictures', '_custom_width_Pictures', '_custom_gap', '_custom_blackAndWhite', '_custom_speed', '_custom_stopSlider', '_custom_slidesPerView');
DELETE FROM wp_termmeta WHERE meta_key IN ('_favorite_color', '_custom_border', '_custom_border_type', '_custom_border-color', '_custom_images', '_custom_height', '_custom_width', '_custom_padding', '_custom_centerSlider', '_custom_height_Pictures', '_custom_width_Pictures', '_custom_gap', '_custom_blackAndWhite', '_custom_speed', '_custom_stopSlider', '_custom_slidesPerView');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_favorite_color', '_custom_border', '_custom_border_type', '_custom_border-color', '_custom_images', '_custom_height', '_custom_width', '_custom_padding', '_custom_centerSlider', '_custom_height_Pictures', '_custom_width_Pictures', '_custom_gap', '_custom_blackAndWhite', '_custom_speed', '_custom_stopSlider', '_custom_slidesPerView');

