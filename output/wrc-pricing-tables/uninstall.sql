-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('packageTables', 'wrcpt_spare_me', 'wrcpt_activation_time', 'packageCount', 'packageIDs', 'IDsCount', 'external_updates-wrc-pricing-tables');
DELETE FROM wp_options WHERE option_name LIKE '%_feature';
DELETE FROM wp_options WHERE option_name LIKE '%_option';

