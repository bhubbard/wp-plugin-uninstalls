-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixelshop_key', 'pixelshop_message', 'pxs_last_export', 'pixelshop_id');

