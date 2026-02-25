-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '_transient_beyond-identity-passwordless--%';
DELETE FROM wp_options WHERE option_name LIKE 'beyond-identity-passwordless-state--%';
DELETE FROM wp_options WHERE option_name LIKE 'beyond-identity-passwordless--%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('beyond-identity-passwordless-last-token-response', 'beyond_identity_user_id', 'beyond-identity-passwordless-last-id-token-claim', 'beyond-identity-passwordless-last-user-claim', 'beyond-identity-passwordless-subject-identity');
DELETE FROM wp_usermeta WHERE meta_key IN ('beyond-identity-passwordless-last-token-response', 'beyond_identity_user_id', 'beyond-identity-passwordless-last-id-token-claim', 'beyond-identity-passwordless-last-user-claim', 'beyond-identity-passwordless-subject-identity');
DELETE FROM wp_termmeta WHERE meta_key IN ('beyond-identity-passwordless-last-token-response', 'beyond_identity_user_id', 'beyond-identity-passwordless-last-id-token-claim', 'beyond-identity-passwordless-last-user-claim', 'beyond-identity-passwordless-subject-identity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('beyond-identity-passwordless-last-token-response', 'beyond_identity_user_id', 'beyond-identity-passwordless-last-id-token-claim', 'beyond-identity-passwordless-last-user-claim', 'beyond-identity-passwordless-subject-identity');

