-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sasm-options-role', 'sasm-encrypted-data', 'sasm_enable_logs');

