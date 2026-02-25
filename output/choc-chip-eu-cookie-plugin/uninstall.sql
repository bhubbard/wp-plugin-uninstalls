-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('choc_chip_eu_cookie_appearance', 'choc_chip_eu_cookie_optin');

