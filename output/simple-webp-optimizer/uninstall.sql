-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_i4swo_old_size', '_i4swo_new_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('_i4swo_old_size', '_i4swo_new_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('_i4swo_old_size', '_i4swo_new_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_i4swo_old_size', '_i4swo_new_size');

