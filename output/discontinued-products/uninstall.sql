-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dp_shop_page_id', 'dp_discontinued_text', 'dp_alt_text', 'dp_hide_from_shop', 'dp_hide_from_search', 'active_sitewide_plugins', 'do_update_dp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_discontinued', '_hide_from_shop', '_hide_from_search', '_alt_products', '_discontinued_product_text', '_alt_product_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_discontinued', '_hide_from_shop', '_hide_from_search', '_alt_products', '_discontinued_product_text', '_alt_product_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_discontinued', '_hide_from_shop', '_hide_from_search', '_alt_products', '_discontinued_product_text', '_alt_product_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_discontinued', '_hide_from_shop', '_hide_from_search', '_alt_products', '_discontinued_product_text', '_alt_product_text');

