-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('azt-settings', 'azt-item-fields', 'azt-azh-widget', 'azt-demo-imported', 'azh-settings', 'recently_activated', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lat', 'lng');
DELETE FROM wp_usermeta WHERE meta_key IN ('lat', 'lng');
DELETE FROM wp_termmeta WHERE meta_key IN ('lat', 'lng');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lat', 'lng');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

