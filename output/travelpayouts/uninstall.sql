-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TravelpayoutsSettingsFrameworkPlugin_ACTIVATED_NOTICES', 'active_sitewide_plugins', 'TravelpayoutsSettingsFrameworkPlugin', 'auto_update_Redux_Travelpayouts_google_fonts');
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_usermeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_termmeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';

