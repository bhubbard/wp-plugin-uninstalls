-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slider_popup_design', 'related_product', 'product_page_reels', 'product_page_video');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('medium_video', 'reels_view', 'productsData', 'show_home_slider', 'reelSliderProduct', 'right_video');
DELETE FROM wp_usermeta WHERE meta_key IN ('medium_video', 'reels_view', 'productsData', 'show_home_slider', 'reelSliderProduct', 'right_video');
DELETE FROM wp_termmeta WHERE meta_key IN ('medium_video', 'reels_view', 'productsData', 'show_home_slider', 'reelSliderProduct', 'right_video');
DELETE FROM wp_commentmeta WHERE meta_key IN ('medium_video', 'reels_view', 'productsData', 'show_home_slider', 'reelSliderProduct', 'right_video');

