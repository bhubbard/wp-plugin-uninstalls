-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seon_licence_key', 'seon_activate_agent');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_order_seon_status', '_order_seon_score', '_order_seon_id', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_order_seon_status', '_order_seon_score', '_order_seon_id', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_order_seon_status', '_order_seon_score', '_order_seon_id', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_order_seon_status', '_order_seon_score', '_order_seon_id', '_regular_price');

