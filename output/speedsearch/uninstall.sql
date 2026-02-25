-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_permalinks', 'speedsearch-updating', 'speedsearch-activation-handled', 'speedsearch-user-data-that-activated-the-plugin', 'speedsearch-post-activation-handled', 'speedsearch-synced', 'speedsearch-store-was-authorised', 'speedsearch-setting-debug-mode-products', 'speedsearch-last-plugin-error', 'speedsearch__license_status', 'speedsearch__license_key', 'woocommerce_hide_out_of_stock_items', 'speedsearch_store_authorized', 'speedsearch-shop-pages-count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('speedsearch-swatch-image', '_wp_attachment_image_alt', 'display_type', 'order', 'thumbnail_id', 'speedsearch_product_last_modified_time', 'speedsearch-add-to-feed-buffer-last-time');
DELETE FROM wp_usermeta WHERE meta_key IN ('speedsearch-swatch-image', '_wp_attachment_image_alt', 'display_type', 'order', 'thumbnail_id', 'speedsearch_product_last_modified_time', 'speedsearch-add-to-feed-buffer-last-time');
DELETE FROM wp_termmeta WHERE meta_key IN ('speedsearch-swatch-image', '_wp_attachment_image_alt', 'display_type', 'order', 'thumbnail_id', 'speedsearch_product_last_modified_time', 'speedsearch-add-to-feed-buffer-last-time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('speedsearch-swatch-image', '_wp_attachment_image_alt', 'display_type', 'order', 'thumbnail_id', 'speedsearch_product_last_modified_time', 'speedsearch-add-to-feed-buffer-last-time');

