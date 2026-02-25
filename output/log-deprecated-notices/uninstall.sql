-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_deprecated_log_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('_deprecated_log_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('_deprecated_log_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_deprecated_log_meta');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_deprecated_log_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_deprecated_log_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_deprecated_log_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_deprecated_log_%';

