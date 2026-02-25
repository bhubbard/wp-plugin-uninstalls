-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('justin_legal_hash', 'justin_legal_lawFirmName', 'justin_legal_emailAddress', 'justin_legal_hex', 'justin_legal_font', 'justin_legal_borderState');

