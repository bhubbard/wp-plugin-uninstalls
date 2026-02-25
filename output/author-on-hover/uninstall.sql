-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_aoh_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aoh_profile_options', 'aoh_post_options', '_aoh_profile_card_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aoh_profile_options', 'aoh_post_options', '_aoh_profile_card_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aoh_profile_options', 'aoh_post_options', '_aoh_profile_card_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aoh_profile_options', 'aoh_post_options', '_aoh_profile_card_options');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_aoh_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_aoh_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_aoh_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_aoh_errors_%';

