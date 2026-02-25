-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_invite_codes_require_code', 'bp_invite_codes_default_bp_groups');
DELETE FROM wp_options WHERE option_name LIKE 'bp_invite_code_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bp_invite_codes_group_id', '_bp_invite_codes_groups', '_bp_invite_codes_code', '_bp_invite_codes_used', '_bp_invite_codes_limit', '_bp_invite_codes_expiration');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bp_invite_codes_group_id', '_bp_invite_codes_groups', '_bp_invite_codes_code', '_bp_invite_codes_used', '_bp_invite_codes_limit', '_bp_invite_codes_expiration');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bp_invite_codes_group_id', '_bp_invite_codes_groups', '_bp_invite_codes_code', '_bp_invite_codes_used', '_bp_invite_codes_limit', '_bp_invite_codes_expiration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bp_invite_codes_group_id', '_bp_invite_codes_groups', '_bp_invite_codes_code', '_bp_invite_codes_used', '_bp_invite_codes_limit', '_bp_invite_codes_expiration');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%code';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%code';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%code';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%code';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%limit';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%limit';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%limit';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%limit';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%expiration';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%expiration';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%expiration';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%expiration';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%used';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%used';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%used';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%used';

