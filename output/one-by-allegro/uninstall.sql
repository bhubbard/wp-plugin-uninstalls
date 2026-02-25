-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onedelivery_company_name', 'onedelivery_postcode', 'onedelivery_city', 'onedelivery_street', 'onedelivery_street_number', 'onedelivery_country_code', 'onedelivery_api_username', 'onedelivery_api_password', 'onedelivery_label_format');

