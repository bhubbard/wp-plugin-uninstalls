-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shipperhq_settings', 'shipperhq_debug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('listing_status', 'listing_id', 'must_ship_freight', 'freight_class', 'shipperhq_warehouse', 'shipperhq_shipping_group', 'shipperhq_dim_group', 'ship_separately', 'shipperhq_hs_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('listing_status', 'listing_id', 'must_ship_freight', 'freight_class', 'shipperhq_warehouse', 'shipperhq_shipping_group', 'shipperhq_dim_group', 'ship_separately', 'shipperhq_hs_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('listing_status', 'listing_id', 'must_ship_freight', 'freight_class', 'shipperhq_warehouse', 'shipperhq_shipping_group', 'shipperhq_dim_group', 'ship_separately', 'shipperhq_hs_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('listing_status', 'listing_id', 'must_ship_freight', 'freight_class', 'shipperhq_warehouse', 'shipperhq_shipping_group', 'shipperhq_dim_group', 'ship_separately', 'shipperhq_hs_code');

