-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cashbill_id', 'cashbill_secret', 'cashbill_psc_id', 'cashbill_psc_secret', 'cashbill_test', 'cashbill_psc_mode');

