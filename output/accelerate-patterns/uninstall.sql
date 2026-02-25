-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_initial_version';
DELETE FROM wp_options WHERE option_name LIKE '%_current_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pattern_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('pattern_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('pattern_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pattern_description');

