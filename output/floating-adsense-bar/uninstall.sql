-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FF_width', 'FF_height', 'FF_LeftRight', 'FF_Code');

