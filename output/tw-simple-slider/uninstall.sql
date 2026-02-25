-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twssc_simple_slider_version', 'twssc_slider_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_twssc_slider_images', '_twssc_slider_slides_to_show', '_twssc_slider_fade_animation', '_twssc_slider_show_arrows', '_twssc_slider_show_dots', '_twssc_slider_autoplay', '_twssc_slider_pause_on_hover', '_twssc_slider_custom_style', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_twssc_slider_images', '_twssc_slider_slides_to_show', '_twssc_slider_fade_animation', '_twssc_slider_show_arrows', '_twssc_slider_show_dots', '_twssc_slider_autoplay', '_twssc_slider_pause_on_hover', '_twssc_slider_custom_style', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_twssc_slider_images', '_twssc_slider_slides_to_show', '_twssc_slider_fade_animation', '_twssc_slider_show_arrows', '_twssc_slider_show_dots', '_twssc_slider_autoplay', '_twssc_slider_pause_on_hover', '_twssc_slider_custom_style', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_twssc_slider_images', '_twssc_slider_slides_to_show', '_twssc_slider_fade_animation', '_twssc_slider_show_arrows', '_twssc_slider_show_dots', '_twssc_slider_autoplay', '_twssc_slider_pause_on_hover', '_twssc_slider_custom_style', '_wp_attachment_image_alt');

