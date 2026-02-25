-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cm_mbr_max_backups');
DELETE FROM wp_options WHERE option_name LIKE '%menu_backups';
DELETE FROM wp_options WHERE option_name LIKE '%import_export_logs';
DELETE FROM wp_options WHERE option_name LIKE '%nav_menu_options';
DELETE FROM wp_options WHERE option_name LIKE '%max_backups';
DELETE FROM wp_options WHERE option_name LIKE '%messages';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%original_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%original_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%original_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%original_name';

