-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_qty_step', '_qty_max', '_qty_min');
DELETE FROM wp_usermeta WHERE meta_key IN ('_qty_step', '_qty_max', '_qty_min');
DELETE FROM wp_termmeta WHERE meta_key IN ('_qty_step', '_qty_max', '_qty_min');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_qty_step', '_qty_max', '_qty_min');

