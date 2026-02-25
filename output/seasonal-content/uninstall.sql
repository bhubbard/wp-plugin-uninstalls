-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%current_season';
DELETE FROM wp_options WHERE option_name LIKE '%elementor_main_data_backups';
DELETE FROM wp_options WHERE option_name LIKE '%update_backup_settings';
DELETE FROM wp_options WHERE option_name LIKE '%installed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_seasonalcontent_main_backup', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_seasonalcontent_main_backup', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_seasonalcontent_main_backup', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_seasonalcontent_main_backup', '_elementor_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%current_season';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%current_season';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%current_season';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%current_season';

