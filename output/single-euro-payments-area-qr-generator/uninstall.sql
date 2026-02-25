-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('company_name', 'company_iban', 'company_bic', 'company_qr_size');

