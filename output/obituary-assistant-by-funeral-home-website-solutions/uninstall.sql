-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fhw-solutions-obituaries_1', 'fhw-solutions-obituaries_2', 'fhw-solutions-obituaries_3', 'oa-version', 'oa_api_base', 'fhw_solutions_obituaries_client_info', 'fhw-solutions-elements', 'florist-one-flower-delivery');
DELETE FROM wp_options WHERE option_name LIKE '%_1';
DELETE FROM wp_options WHERE option_name LIKE '%_2';
DELETE FROM wp_options WHERE option_name LIKE '%_3';
DELETE FROM wp_options WHERE option_name LIKE '%_4';
DELETE FROM wp_options WHERE option_name LIKE '%_validation_messages';

