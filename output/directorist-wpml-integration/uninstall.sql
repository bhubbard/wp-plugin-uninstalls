-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('directorist_wpml_integration:current_language', 'directorist_wpml_integration_before_change_current_language');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_directory_type', '_default');
DELETE FROM wp_usermeta WHERE meta_key IN ('_directory_type', '_default');
DELETE FROM wp_termmeta WHERE meta_key IN ('_directory_type', '_default');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_directory_type', '_default');

