-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('msum_default_user_role');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('msum_has_caps');
DELETE FROM wp_usermeta WHERE meta_key IN ('msum_has_caps');
DELETE FROM wp_termmeta WHERE meta_key IN ('msum_has_caps');
DELETE FROM wp_commentmeta WHERE meta_key IN ('msum_has_caps');

