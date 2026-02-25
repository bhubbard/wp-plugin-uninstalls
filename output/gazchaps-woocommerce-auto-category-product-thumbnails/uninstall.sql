-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gazchaps-woocommerce-auto-category-product-thumbnails_use-transients', 'gazchaps-woocommerce-auto-category-product-thumbnails_transient-expiry', 'gazchaps-woocommerce-auto-category-product-thumbnails_transient-expiry-custom', 'gazchaps-woocommerce-auto-category-product-thumbnails_shuffle', 'gazchaps-woocommerce-auto-category-product-thumbnails_recurse', 'gazchaps-woocommerce-auto-category-product-thumbnails_category-size', 'gazchaps-woocommerce-auto-category-product-thumbnails_exclude-thumbnail-ids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id');

