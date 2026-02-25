-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_width';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_width';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_width';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_width';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_height';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_height';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_height';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_height';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'label_text_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'label_text_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'label_text_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'label_text_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'position_top_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'position_top_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'position_top_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'position_top_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'position_left_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'position_left_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'position_left_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'position_left_%';

