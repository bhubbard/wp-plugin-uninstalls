-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_spl_payulatam_user', 'sp_spl_payulatam_password', 'sp_spl_payulatam_accountid', 'sp_spl_payulatam_language');

