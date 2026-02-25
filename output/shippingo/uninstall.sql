-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shippingo_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shippingo_shipment');
DELETE FROM wp_usermeta WHERE meta_key IN ('shippingo_shipment');
DELETE FROM wp_termmeta WHERE meta_key IN ('shippingo_shipment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shippingo_shipment');

