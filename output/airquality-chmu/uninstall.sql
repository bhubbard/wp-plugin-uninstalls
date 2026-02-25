-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chmu_station', 'chmu_data', 'chmu_last_update');
DELETE FROM wp_options WHERE option_name LIKE 'chmu_show_%';
DELETE FROM wp_options WHERE option_name LIKE 'chmu_legend_%';

