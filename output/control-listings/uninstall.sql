-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('control_listings_dimension_unit', 'control_listings_weight_unit', 'control_listings', 'control_listings_options', 'posts_page');
DELETE FROM wp_options WHERE option_name LIKE 'bookmark_count_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('enable_gallery', 'gallery', 'awards', 'lising_images', 'videos', 'event_plans', 'faqs', 'min_price', 'max_price', 'logo', 'address', 'phone', 'email', 'website', 'social_links', 'map', 'subtitle', 'ctrl_listing_favorite_posts', 'ctrl_listing_favorite_count', 'ct_builder_shortcodes', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('enable_gallery', 'gallery', 'awards', 'lising_images', 'videos', 'event_plans', 'faqs', 'min_price', 'max_price', 'logo', 'address', 'phone', 'email', 'website', 'social_links', 'map', 'subtitle', 'ctrl_listing_favorite_posts', 'ctrl_listing_favorite_count', 'ct_builder_shortcodes', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('enable_gallery', 'gallery', 'awards', 'lising_images', 'videos', 'event_plans', 'faqs', 'min_price', 'max_price', 'logo', 'address', 'phone', 'email', 'website', 'social_links', 'map', 'subtitle', 'ctrl_listing_favorite_posts', 'ctrl_listing_favorite_count', 'ct_builder_shortcodes', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('enable_gallery', 'gallery', 'awards', 'lising_images', 'videos', 'event_plans', 'faqs', 'min_price', 'max_price', 'logo', 'address', 'phone', 'email', 'website', 'social_links', 'map', 'subtitle', 'ctrl_listing_favorite_posts', 'ctrl_listing_favorite_count', 'ct_builder_shortcodes', '_wp_page_template', '_wp_attachment_image_alt');

