-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sg_welcome_page_was_showed', 'sgg_ac_remind', 'sgg_ac_subscribe', 'sgg_ac_disabled', 'sg_settings', 'previewImageId', 'customCatsPresets', 'customPagesPresets', 'showGalleryRevNotice', 'defaultgallerysettings', 'supsystic_gallery_show_love_link', 'supsystic_gallery_last_check_love_link', 'supsystic_gallery_love_link_title', 'insta_token', 'insta_user', 'insta_thumbnails', 'sgg_plug_welcome_show');
DELETE FROM wp_options WHERE option_name LIKE '%settings';
DELETE FROM wp_options WHERE option_name LIKE '%rand_sorts';
DELETE FROM wp_options WHERE option_name LIKE 'post_to_render%';
DELETE FROM wp_options WHERE option_name LIKE 'pages_to_render%';
DELETE FROM wp_options WHERE option_name LIKE '%welcome_page_was_showed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cropPositionNeedUpdate', '_wp_attachment_image_alt', 'captionEffect', 'cropPosition', 'sgg-tutorial_was_showed');
DELETE FROM wp_usermeta WHERE meta_key IN ('cropPositionNeedUpdate', '_wp_attachment_image_alt', 'captionEffect', 'cropPosition', 'sgg-tutorial_was_showed');
DELETE FROM wp_termmeta WHERE meta_key IN ('cropPositionNeedUpdate', '_wp_attachment_image_alt', 'captionEffect', 'cropPosition', 'sgg-tutorial_was_showed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cropPositionNeedUpdate', '_wp_attachment_image_alt', 'captionEffect', 'cropPosition', 'sgg-tutorial_was_showed');

