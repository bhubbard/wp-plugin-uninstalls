-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooctrl_thumb_size', 'wooctrl_include_thumbs', 'wooctrl_embed_images', 'woocommerce_email_header_image', 'wooctrl_image_wrapper', 'wooctrl_include_cats', 'wooctrl_include_all_cats', 'wooctrl_include_sku', 'wooctrl_custom_image_size', 'wooctrl_latest_test_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku');

