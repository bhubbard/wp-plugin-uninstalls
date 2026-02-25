-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flexible_pickup_settings', 'recently_activated', 'active_sitewide_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_company', '_address', '_address_2', '_postal_code', '_city', '_cost', '_cod', 'tgmpa_dismissed_notice_flexible-pickup', '_flexible_pickup');
DELETE FROM wp_usermeta WHERE meta_key IN ('_company', '_address', '_address_2', '_postal_code', '_city', '_cost', '_cod', 'tgmpa_dismissed_notice_flexible-pickup', '_flexible_pickup');
DELETE FROM wp_termmeta WHERE meta_key IN ('_company', '_address', '_address_2', '_postal_code', '_city', '_cost', '_cod', 'tgmpa_dismissed_notice_flexible-pickup', '_flexible_pickup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_company', '_address', '_address_2', '_postal_code', '_city', '_cost', '_cod', 'tgmpa_dismissed_notice_flexible-pickup', '_flexible_pickup');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

