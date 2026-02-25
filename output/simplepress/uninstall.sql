-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('embed_autourls', 'ms_files_rewriting', 'widget_spf', 'widget_sforum', 'sfInstallID', 'sp_storage1', 'sp_storage2', 'sp_update_plugins', 'sp_update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_change_pw', 'first_name', 'last_name', 'location', 'description', 'aim', 'yim', 'jabber', 'msn', 'icq', 'skype', 'facebook', 'myspace', 'twitter', 'linkedin', 'youtube', 'googleplus', 'instagram', 'photos');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_change_pw', 'first_name', 'last_name', 'location', 'description', 'aim', 'yim', 'jabber', 'msn', 'icq', 'skype', 'facebook', 'myspace', 'twitter', 'linkedin', 'youtube', 'googleplus', 'instagram', 'photos');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_change_pw', 'first_name', 'last_name', 'location', 'description', 'aim', 'yim', 'jabber', 'msn', 'icq', 'skype', 'facebook', 'myspace', 'twitter', 'linkedin', 'youtube', 'googleplus', 'instagram', 'photos');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_change_pw', 'first_name', 'last_name', 'location', 'description', 'aim', 'yim', 'jabber', 'msn', 'icq', 'skype', 'facebook', 'myspace', 'twitter', 'linkedin', 'youtube', 'googleplus', 'instagram', 'photos');

