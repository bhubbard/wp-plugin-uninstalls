-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_gf_billingo_pro_enabled', '_gf_billingo_pro_key', '_gf_billingo_pro_email', '_gf_billingo_error');
DELETE FROM wp_options WHERE option_name LIKE 'gf_billingo_bank_accounts_%';
DELETE FROM wp_options WHERE option_name LIKE 'gf_billingo_invoice_blocks_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gf_billingo_admin_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('gf_billingo_admin_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('gf_billingo_admin_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gf_billingo_admin_notices');

