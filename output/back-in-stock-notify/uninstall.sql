-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'back_in_stock_notify_installed', 'back_in_stock_notify_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_back_in_stock_notify_notifications');
DELETE FROM wp_usermeta WHERE meta_key IN ('_back_in_stock_notify_notifications');
DELETE FROM wp_termmeta WHERE meta_key IN ('_back_in_stock_notify_notifications');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_back_in_stock_notify_notifications');

