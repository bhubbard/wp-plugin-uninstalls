-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('role_based_storage_limiter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rbsl_used_storage_space');
DELETE FROM wp_usermeta WHERE meta_key IN ('rbsl_used_storage_space');
DELETE FROM wp_termmeta WHERE meta_key IN ('rbsl_used_storage_space');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rbsl_used_storage_space');

