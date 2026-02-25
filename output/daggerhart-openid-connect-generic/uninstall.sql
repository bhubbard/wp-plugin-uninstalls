-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('openid-connect-generic-plugin-version');
DELETE FROM wp_options WHERE option_name LIKE '_transient_openid-connect-generic-state--%';
DELETE FROM wp_options WHERE option_name LIKE 'openid-connect-generic-state--%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('openid-connect-generic-last-token-response');
DELETE FROM wp_usermeta WHERE meta_key IN ('openid-connect-generic-last-token-response');
DELETE FROM wp_termmeta WHERE meta_key IN ('openid-connect-generic-last-token-response');
DELETE FROM wp_commentmeta WHERE meta_key IN ('openid-connect-generic-last-token-response');

