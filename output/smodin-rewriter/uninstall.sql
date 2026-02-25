-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smodinrewriter-activated', 'smodinrewriter-temp-activated', 'smodinrewriter-settings', 'recently_activated', 'smodin-languages', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smodinrewriter-lang', 'smodinrewriter-strength');
DELETE FROM wp_usermeta WHERE meta_key IN ('smodinrewriter-lang', 'smodinrewriter-strength');
DELETE FROM wp_termmeta WHERE meta_key IN ('smodinrewriter-lang', 'smodinrewriter-strength');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smodinrewriter-lang', 'smodinrewriter-strength');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

