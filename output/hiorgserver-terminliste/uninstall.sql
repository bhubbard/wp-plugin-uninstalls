-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hiorg_account', 'hiorg_anzahl', 'hiorg_monate', 'hiorg_link');

