-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lightsoff_setting_toggler', 'lightsoff_setting_select', 'lightsoff_setting_checkbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('lightsoff_setting_toggler', 'lightsoff_setting_select', 'lightsoff_setting_checkbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('lightsoff_setting_toggler', 'lightsoff_setting_select', 'lightsoff_setting_checkbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lightsoff_setting_toggler', 'lightsoff_setting_select', 'lightsoff_setting_checkbox');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_select';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_select';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_select';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_select';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_checkbox';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_checkbox';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_checkbox';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_checkbox';

