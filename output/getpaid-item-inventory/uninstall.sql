-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getpaid_redirected_to_inventory_settings', 'getpaid_item_inventory_scheduled_cron', 'getpaid_item_inventory_db_version', 'recently_activated', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_reduced_stock_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_reduced_stock_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_reduced_stock_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_reduced_stock_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

