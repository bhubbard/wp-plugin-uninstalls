-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('computop_merchant_id', 'computop_encryption_key', 'computop_hash_key', 'computop_ideal_issuers', 'computop_sandbox_mode');

