-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rp_site_key', 'rp_default_longitude', 'rp_default_latitude', 'rp_default_zoom');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_order_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_order_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_order_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_order_key');

