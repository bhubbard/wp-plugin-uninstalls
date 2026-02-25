-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('NDTAN_DUPLICATE_options', 'ndt_duplicate_options');

