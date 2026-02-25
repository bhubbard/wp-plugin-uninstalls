-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_woo_gallery_slider_review_notice_dismiss', 'sp-smart-swatches-notice-dismissed', 'wcgs_settings', 'woo_gallery_slider_version', 'woo_gallery_slider_first_version', 'woo_gallery_slider_activation_date', 'woo_gallery_slider_db_version', 'wcgs_assigns', 'shapedplugin_offer_banner_dismissed_black_friday_2025', 'shapedplugin_offer_banner_dismissed_new_year_2026', 'wcgs_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcgs_assign_layout_settings', 'wcgs_layouts_metaboxes', 'wcgs_metabox', 'wcgs_video', 'woo_gallery_slider', '_wc_additional_variation_images', '_product_image_gallery', 'rtwpvg_images', 'wavi_value', 'woo_variation_gallery_images', '_wc_attachment_source', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcgs_assign_layout_settings', 'wcgs_layouts_metaboxes', 'wcgs_metabox', 'wcgs_video', 'woo_gallery_slider', '_wc_additional_variation_images', '_product_image_gallery', 'rtwpvg_images', 'wavi_value', 'woo_variation_gallery_images', '_wc_attachment_source', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcgs_assign_layout_settings', 'wcgs_layouts_metaboxes', 'wcgs_metabox', 'wcgs_video', 'woo_gallery_slider', '_wc_additional_variation_images', '_product_image_gallery', 'rtwpvg_images', 'wavi_value', 'woo_variation_gallery_images', '_wc_attachment_source', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcgs_assign_layout_settings', 'wcgs_layouts_metaboxes', 'wcgs_metabox', 'wcgs_video', 'woo_gallery_slider', '_wc_additional_variation_images', '_product_image_gallery', 'rtwpvg_images', 'wavi_value', 'woo_variation_gallery_images', '_wc_attachment_source', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcgs_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcgs_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcgs_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcgs_errors_%';

