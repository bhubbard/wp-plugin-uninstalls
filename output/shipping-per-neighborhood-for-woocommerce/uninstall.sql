-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsn_global_cities', 'wsn_global_neighborhoods');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_teste', 'shiping_teste', 'billing_neighborhood', 'shipping_neighborhood');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_teste', 'shiping_teste', 'billing_neighborhood', 'shipping_neighborhood');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_teste', 'shiping_teste', 'billing_neighborhood', 'shipping_neighborhood');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_teste', 'shiping_teste', 'billing_neighborhood', 'shipping_neighborhood');

