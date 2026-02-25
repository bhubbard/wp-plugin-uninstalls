-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('infomaniak-connect-openid-plugin-version');
DELETE FROM wp_options WHERE option_name LIKE '_transient_infomaniak-connect-openid-state--%';
DELETE FROM wp_options WHERE option_name LIKE 'infomaniak-connect-openid-state--%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('infomaniak-connect-openid-last-token-response', 'infomaniak-connect-openid-last-id-token-claim', 'infomaniak-connect-openid-last-user-claim', 'infomaniak-connect-openid-subject-identity');
DELETE FROM wp_usermeta WHERE meta_key IN ('infomaniak-connect-openid-last-token-response', 'infomaniak-connect-openid-last-id-token-claim', 'infomaniak-connect-openid-last-user-claim', 'infomaniak-connect-openid-subject-identity');
DELETE FROM wp_termmeta WHERE meta_key IN ('infomaniak-connect-openid-last-token-response', 'infomaniak-connect-openid-last-id-token-claim', 'infomaniak-connect-openid-last-user-claim', 'infomaniak-connect-openid-subject-identity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('infomaniak-connect-openid-last-token-response', 'infomaniak-connect-openid-last-id-token-claim', 'infomaniak-connect-openid-last-user-claim', 'infomaniak-connect-openid-subject-identity');

