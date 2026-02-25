-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FVDUKDisableEndPoint', 'FVDUKCreditUs', 'fvduk_sandbox_mode', 'FVDUKCreditLink', 'RandomAPIAccLevel1');

