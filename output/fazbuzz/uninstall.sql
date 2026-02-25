-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fazbuzz_valid_key', 'fazbuzz_post_category', 'FAZBUZZ_VERSION', 'fazbuzz_key');

