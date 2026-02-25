-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ovulationcalculator-group', 'oc_period_result', 'oc_fertile_result', 'lang_ovulation_calc_BackupLink');

