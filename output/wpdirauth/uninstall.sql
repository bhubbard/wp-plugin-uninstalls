-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dirAuthCookieMarker', 'dirAuthControllers', 'dirAuthBaseDn', 'dirAuthPreBindUser', 'dirAuthPreBindPassword', 'dirAuthAccountSuffix', 'dirAuthFilter', 'dirAuthEnableSsl', 'dirAuthUseGroups', 'dirAuthGroups', 'dirAuthEnable', 'dirAuthRequireSsl', 'dirAuthAutoRegister', 'dirAuthInstitution', 'dirAuthLoginScreenMsg', 'dirAuthChangePassMsg', 'dirAuthTOS', 'dirAuthMarketingSSOID', 'dirAuthCookieExpire');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpDirAuthFlag', 'wpDirAuthTOS');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpDirAuthFlag', 'wpDirAuthTOS');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpDirAuthFlag', 'wpDirAuthTOS');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpDirAuthFlag', 'wpDirAuthTOS');

