-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('worten_marketplace', 'carrier_code', 'carrier_name', 'tracking_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('worten_marketplace', 'carrier_code', 'carrier_name', 'tracking_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('worten_marketplace', 'carrier_code', 'carrier_name', 'tracking_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('worten_marketplace', 'carrier_code', 'carrier_name', 'tracking_number');

