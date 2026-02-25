-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcci_version', 'wpcci_just_activated', 'abd_libs_version');
DELETE FROM wp_options WHERE option_name LIKE '%_errors';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_empty_string';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_empty_string';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_empty_string';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_empty_string';

