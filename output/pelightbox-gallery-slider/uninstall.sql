-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Lightbox_settings', 'img_style');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('simple_imgs', 'img_main', 'youtube_main', 'vimeo_main', 'portfo_main', 'iframe_main', '_wp_page_template', 'simg_main', 'custom_css', 'settings_main', 'Soundcloud_main');
DELETE FROM wp_usermeta WHERE meta_key IN ('simple_imgs', 'img_main', 'youtube_main', 'vimeo_main', 'portfo_main', 'iframe_main', '_wp_page_template', 'simg_main', 'custom_css', 'settings_main', 'Soundcloud_main');
DELETE FROM wp_termmeta WHERE meta_key IN ('simple_imgs', 'img_main', 'youtube_main', 'vimeo_main', 'portfo_main', 'iframe_main', '_wp_page_template', 'simg_main', 'custom_css', 'settings_main', 'Soundcloud_main');
DELETE FROM wp_commentmeta WHERE meta_key IN ('simple_imgs', 'img_main', 'youtube_main', 'vimeo_main', 'portfo_main', 'iframe_main', '_wp_page_template', 'simg_main', 'custom_css', 'settings_main', 'Soundcloud_main');

