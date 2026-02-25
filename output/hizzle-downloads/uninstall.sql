-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hizzle_downloads_admin_notices', 'hizzle_download_options', 'hizzle_downloads_schema_missing_tables', 'hizzle_downloads_xsendfile_missing', 'hizzle_downloads_db_version', 'hizzle_downloads_options', 'hizzle_logger_version', 'hizzle_downloads_installing');
DELETE FROM wp_options WHERE option_name LIKE 'hizzle_downloads_admin_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'hizzle_download_admin_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';

