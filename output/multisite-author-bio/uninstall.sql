-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mab_clear_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mab_profile_bio%');
DELETE FROM wp_usermeta WHERE meta_key IN ('mab_profile_bio%');
DELETE FROM wp_termmeta WHERE meta_key IN ('mab_profile_bio%');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mab_profile_bio%');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mab_profile_bio_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mab_profile_bio_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mab_profile_bio_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mab_profile_bio_%';

