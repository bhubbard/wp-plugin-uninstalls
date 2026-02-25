-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('img_style', 'Lightbox_settings', 'iframe_style', 'vimeo_style', 'youtube_style');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('simple_imgs', 'img_main', 'youtube_main', 'vimeo_main', 'portfo_main', 'iframe_main', 'Soundcloud_main', '_wp_page_template', 'settings_main', 'custom_css', 'iframe_settings', 'port_settings', 'simg_main', 'vimeo_settings', 'you_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('simple_imgs', 'img_main', 'youtube_main', 'vimeo_main', 'portfo_main', 'iframe_main', 'Soundcloud_main', '_wp_page_template', 'settings_main', 'custom_css', 'iframe_settings', 'port_settings', 'simg_main', 'vimeo_settings', 'you_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('simple_imgs', 'img_main', 'youtube_main', 'vimeo_main', 'portfo_main', 'iframe_main', 'Soundcloud_main', '_wp_page_template', 'settings_main', 'custom_css', 'iframe_settings', 'port_settings', 'simg_main', 'vimeo_settings', 'you_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('simple_imgs', 'img_main', 'youtube_main', 'vimeo_main', 'portfo_main', 'iframe_main', 'Soundcloud_main', '_wp_page_template', 'settings_main', 'custom_css', 'iframe_settings', 'port_settings', 'simg_main', 'vimeo_settings', 'you_settings');

