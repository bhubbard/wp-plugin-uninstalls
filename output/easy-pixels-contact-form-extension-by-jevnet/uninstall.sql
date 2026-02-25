-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jn_cf7_ADW_labels', 'jn_GADW_CF7_enable', 'jnAnalyticsCF7Settings-group');

