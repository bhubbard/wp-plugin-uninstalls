-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%setting_general';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%setting_general';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%setting_general';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%setting_general';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%setting_autoplay';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%setting_autoplay';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%setting_autoplay';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%setting_autoplay';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%setting_pagination';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%setting_pagination';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%setting_pagination';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%setting_pagination';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%setting_navigation';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%setting_navigation';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%setting_navigation';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%setting_navigation';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%setting_breakpoints';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%setting_breakpoints';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%setting_breakpoints';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%setting_breakpoints';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%gallery_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%gallery_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%gallery_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%gallery_id';

