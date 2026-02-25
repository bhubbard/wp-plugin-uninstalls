-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('posttile-transparency', 'category-key', 'category-key-jquery', 'featured-images', 'responsive-key', 'animation-style', 'posttiles-width', 'posttiles-height', 'featured-image-width', 'featured-image-height', 'excerpt-length', 'pagination-key');
DELETE FROM wp_options WHERE option_name LIKE 'cat_bg_%';
DELETE FROM wp_options WHERE option_name LIKE 'cat_tx_%';

