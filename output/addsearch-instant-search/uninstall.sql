-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('addsearch_settings', 'addsearch_redirect', 'addSearchCustomerKey', 'addsearch_prexisting', 'addsearch_currentversion');

