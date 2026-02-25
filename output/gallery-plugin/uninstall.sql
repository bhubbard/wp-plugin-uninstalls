-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bstwbsftwppdtplgns_options', 'recently_activated', 'active_sitewide_plugins', 'gllr_options', 'gllr_demo_options', 'rewrite_rules', 'widget_gallery_categories_widget', 'cstmsrch_options', 'update_plugins', 'bws_plugins_update');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%demo_options';
DELETE FROM wp_options WHERE option_name LIKE '%options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', '_thumbnail_id', 'gllr_album_order', '_gallery_images', 'gllr_image_alt_tag', 'gllr_image_text', 'gallery_images_shortpixel', 'gllr_link_url', 'wp_gllr_media_library_mode', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', '_thumbnail_id', 'gllr_album_order', '_gallery_images', 'gllr_image_alt_tag', 'gllr_image_text', 'gallery_images_shortpixel', 'gllr_link_url', 'wp_gllr_media_library_mode', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', '_thumbnail_id', 'gllr_album_order', '_gallery_images', 'gllr_image_alt_tag', 'gllr_image_text', 'gallery_images_shortpixel', 'gllr_link_url', 'wp_gllr_media_library_mode', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', '_thumbnail_id', 'gllr_album_order', '_gallery_images', 'gllr_image_alt_tag', 'gllr_image_text', 'gallery_images_shortpixel', 'gllr_link_url', 'wp_gllr_media_library_mode', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_gallery_order_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_gallery_order_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_gallery_order_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_gallery_order_%';

