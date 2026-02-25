-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('liquid_blocks_toggle', 'liquid_blocks_no', 'liquid_blocks_type', 'liquid_blocks_name', 'liquid_blocks_clean', 'liquid_admin_notices', 'liquid_admin_offer');

