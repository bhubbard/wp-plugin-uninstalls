-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wisestock_options', 'wisestock_installation_completed', 'wisestock_activation_status', 'wisestock_activation_date', 'wisestock_activation_error', 'wisestock_db_version', 'wisestock_installation_date', 'wisestock_demo_data_version', 'wisestock_all_suppliers', 'wisestock_notifications_all', 'wisestock_notifications_critical', 'wisestock_notifications_warning', 'wisestock_notifications_mild', 'wisestock_velocity_cache', 'wisestock_notifications_cache', 'wisestock_suppliers_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wisestock_default_supplier');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wisestock_default_supplier');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wisestock_default_supplier');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wisestock_default_supplier');

