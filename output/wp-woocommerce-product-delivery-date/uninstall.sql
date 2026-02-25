-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_delivery_date_enabled', 'delivery_days_available');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_delivery_date_enabled', 'delivery_days_available');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_delivery_date_enabled', 'delivery_days_available');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_delivery_date_enabled', 'delivery_days_available');

