-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('carousel_slider_settings', 'carousel_slider_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_carousel_slider_link_url', '_wp_attachment_image_alt', '_slide_type', '_carousel_slider_version', '_content_slider', '_content_slider_settings', '_images_urls', '_post_order', '_post_orderby', '_posts_per_page', '_post_query_type', '_post_in', '_post_categories', '_post_tags', '_post_date_after', '_post_date_before', '_yoast_wpseo_primary_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('_carousel_slider_link_url', '_wp_attachment_image_alt', '_slide_type', '_carousel_slider_version', '_content_slider', '_content_slider_settings', '_images_urls', '_post_order', '_post_orderby', '_posts_per_page', '_post_query_type', '_post_in', '_post_categories', '_post_tags', '_post_date_after', '_post_date_before', '_yoast_wpseo_primary_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('_carousel_slider_link_url', '_wp_attachment_image_alt', '_slide_type', '_carousel_slider_version', '_content_slider', '_content_slider_settings', '_images_urls', '_post_order', '_post_orderby', '_posts_per_page', '_post_query_type', '_post_in', '_post_categories', '_post_tags', '_post_date_after', '_post_date_before', '_yoast_wpseo_primary_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_carousel_slider_link_url', '_wp_attachment_image_alt', '_slide_type', '_carousel_slider_version', '_content_slider', '_content_slider_settings', '_images_urls', '_post_order', '_post_orderby', '_posts_per_page', '_post_query_type', '_post_in', '_post_categories', '_post_tags', '_post_date_after', '_post_date_before', '_yoast_wpseo_primary_category');

