-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('c2c_allow_multiple_accounts');
DELETE FROM wp_options WHERE option_name LIKE 'bkup_%';

