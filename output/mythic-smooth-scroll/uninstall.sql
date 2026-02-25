-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mythic_ss_header_id', 'mythic_ss_offset_amount');

