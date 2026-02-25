-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmdpcf_country_code', 'gmdpcf_address_option', 'gmdpcf_skin');

