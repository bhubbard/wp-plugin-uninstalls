-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('azh-library', 'azh-all-settings', 'azh-get-content-scripts', 'azh-content-settings', 'azh-forms-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hash', 'form_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hash', 'form_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hash', 'form_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hash', 'form_title');

