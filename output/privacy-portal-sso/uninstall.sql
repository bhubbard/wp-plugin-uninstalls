-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pp-sso-plugin-version');
DELETE FROM wp_options WHERE option_name LIKE 'pp-sso-state--%';
DELETE FROM wp_options WHERE option_name LIKE 'pp-sso-state--%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pp-sso-last-token-response', 'pp-sso-last-id-token-claim', 'pp-sso-last-user-claim', 'pp-sso-subject-identity');
DELETE FROM wp_usermeta WHERE meta_key IN ('pp-sso-last-token-response', 'pp-sso-last-id-token-claim', 'pp-sso-last-user-claim', 'pp-sso-subject-identity');
DELETE FROM wp_termmeta WHERE meta_key IN ('pp-sso-last-token-response', 'pp-sso-last-id-token-claim', 'pp-sso-last-user-claim', 'pp-sso-subject-identity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pp-sso-last-token-response', 'pp-sso-last-id-token-claim', 'pp-sso-last-user-claim', 'pp-sso-subject-identity');

