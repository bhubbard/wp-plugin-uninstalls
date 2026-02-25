-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jobvite_api_key', 'jobvite_secret_key', 'jobvite_company_id');

