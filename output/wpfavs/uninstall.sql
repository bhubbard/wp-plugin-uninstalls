-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'wpfav_install', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%wpfav_apikey';
DELETE FROM wp_options WHERE option_name LIKE '%wpfav_quickkey';
DELETE FROM wp_options WHERE option_name LIKE '%wpfav_wpuser';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_wpfav_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_wpfav_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_wpfav_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_wpfav_dismissed_notice_%';

