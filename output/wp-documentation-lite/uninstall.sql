-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_documentation_permalinks', 'wp_documentation_settings', 'wp_documentation_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('list_serialized', '_wp_documentation', 'wp_documentation_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('list_serialized', '_wp_documentation', 'wp_documentation_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('list_serialized', '_wp_documentation', 'wp_documentation_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('list_serialized', '_wp_documentation', 'wp_documentation_settings');

