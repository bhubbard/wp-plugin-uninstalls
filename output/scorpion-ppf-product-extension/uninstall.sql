-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scorpion_ppf_product_sku', 'scorpion_ppf_api_address', 'scorpion_ppf_token');

