-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsapSettings_steamAppFlush', 'wpsapOption_popupEnabled', 'wpsapSettings_apiKey', 'wpsapSettings_logoutRedirect', 'wpsapSettings_loginRedirect', 'wpsapSettings_logoutRedirectReferer', 'wpsapSettings_loginRedirectReferer', 'wpsapOption_avatarUpload', 'wpsapOption_avatarEnabled', 'wpsapSettings_steamAppUrl', 'wpsapSettings_steamAppLoginUrl', 'wpsapSettings_steamAppSyncUrl', 'wpsapSettings_steamAppLogoutUrl');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('steam_wp_avatar', 'steam_steamid', 'steam_force_resync', 'steam_personaname', 'steam_realname');
DELETE FROM wp_usermeta WHERE meta_key IN ('steam_wp_avatar', 'steam_steamid', 'steam_force_resync', 'steam_personaname', 'steam_realname');
DELETE FROM wp_termmeta WHERE meta_key IN ('steam_wp_avatar', 'steam_steamid', 'steam_force_resync', 'steam_personaname', 'steam_realname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('steam_wp_avatar', 'steam_steamid', 'steam_force_resync', 'steam_personaname', 'steam_realname');

