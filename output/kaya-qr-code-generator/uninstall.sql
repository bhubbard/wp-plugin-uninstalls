-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpkqcg_qrcode_generator', 'wpkqcg_kaya_qr_code_generator_admin_notices');

