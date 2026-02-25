-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_transient_health-check-site-status-result');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_export_file_url', '_export_file_path');
DELETE FROM wp_usermeta WHERE meta_key IN ('_export_file_url', '_export_file_path');
DELETE FROM wp_termmeta WHERE meta_key IN ('_export_file_url', '_export_file_path');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_export_file_url', '_export_file_path');

