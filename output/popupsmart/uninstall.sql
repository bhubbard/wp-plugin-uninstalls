-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('popupsmart_account_id');
DELETE FROM wp_options WHERE option_name LIKE '%-account-id';
DELETE FROM wp_options WHERE option_name LIKE '%-popupsmart-version';

