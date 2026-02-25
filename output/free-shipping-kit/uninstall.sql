-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fskit_txt_color', 'fskit_bg_color', 'fskit_hide_tablerate_shipping', 'fskit_show_custom_label', 'fskit_freeshipping_label');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_free_shipping_badge');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_free_shipping_badge');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_free_shipping_badge');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_free_shipping_badge');

