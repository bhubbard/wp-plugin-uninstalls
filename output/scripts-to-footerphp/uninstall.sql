-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stf_version', 'stf_previous_version', 'scripts-to-footer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('stf_exclude');
DELETE FROM wp_usermeta WHERE meta_key IN ('stf_exclude');
DELETE FROM wp_termmeta WHERE meta_key IN ('stf_exclude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('stf_exclude');

