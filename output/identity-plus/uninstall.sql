-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('identity_plus_settings');
DELETE FROM wp_options WHERE option_name LIKE 'identity-plus/%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('identity-plus-anonymous-id', 'identity-plus-intrusion-reference', 'identity-plus-bound');
DELETE FROM wp_usermeta WHERE meta_key IN ('identity-plus-anonymous-id', 'identity-plus-intrusion-reference', 'identity-plus-bound');
DELETE FROM wp_termmeta WHERE meta_key IN ('identity-plus-anonymous-id', 'identity-plus-intrusion-reference', 'identity-plus-bound');
DELETE FROM wp_commentmeta WHERE meta_key IN ('identity-plus-anonymous-id', 'identity-plus-intrusion-reference', 'identity-plus-bound');

