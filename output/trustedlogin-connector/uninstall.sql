-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tl_permalinks_flushed', 'trustedlogin_vendor_config');

