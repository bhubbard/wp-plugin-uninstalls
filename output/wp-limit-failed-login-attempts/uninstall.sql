-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WPLFLA_options', 'Block_hash_code', 'WPLFLA_version', 'Block_hash_code_range_ip', 'Block_hash_code_country');

