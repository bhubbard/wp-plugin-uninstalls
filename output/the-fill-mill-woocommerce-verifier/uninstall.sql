-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tfm_api_key', 'tfm_company_name', 'tfm_company_id');

