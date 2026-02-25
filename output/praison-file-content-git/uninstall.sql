-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('praisonpress_github_token', 'praisonpress_github_repo');
DELETE FROM wp_options WHERE option_name LIKE 'praison_export_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_praison_file_path');
DELETE FROM wp_usermeta WHERE meta_key IN ('_praison_file_path');
DELETE FROM wp_termmeta WHERE meta_key IN ('_praison_file_path');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_praison_file_path');

