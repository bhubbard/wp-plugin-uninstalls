-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mulopimfwc_license_key', 'mulopimfwc_license_status', 'mulopimfwc_display_options', 'woocommerce_manage_stock', 'mulopimfwc_database_indexes_added', 'onepaquc_analytics_last_sent', 'mulopimfwc_admin_notice', 'mulopimfwc_settings_reset', 'mulopimfwc_bulk_action_assign_location', 'mulopimfwc_bulk_action_remove_location');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('street_address', 'city', 'state', 'postal_code', 'country', 'email', 'phone', 'display_order', 'pickup_locations', 'mlpimforwc_ny_notice_dismissed_until', 'mulopimfwc_assigned_locations', 'mulopimfwc_manager_capabilities', '_stock', '_stock_status', '_price', '_purchase_price', '_purchase_quantity', '_sale_price', '_regular_price', 'mulopimfwc_user_locations');
DELETE FROM wp_usermeta WHERE meta_key IN ('street_address', 'city', 'state', 'postal_code', 'country', 'email', 'phone', 'display_order', 'pickup_locations', 'mlpimforwc_ny_notice_dismissed_until', 'mulopimfwc_assigned_locations', 'mulopimfwc_manager_capabilities', '_stock', '_stock_status', '_price', '_purchase_price', '_purchase_quantity', '_sale_price', '_regular_price', 'mulopimfwc_user_locations');
DELETE FROM wp_termmeta WHERE meta_key IN ('street_address', 'city', 'state', 'postal_code', 'country', 'email', 'phone', 'display_order', 'pickup_locations', 'mlpimforwc_ny_notice_dismissed_until', 'mulopimfwc_assigned_locations', 'mulopimfwc_manager_capabilities', '_stock', '_stock_status', '_price', '_purchase_price', '_purchase_quantity', '_sale_price', '_regular_price', 'mulopimfwc_user_locations');
DELETE FROM wp_commentmeta WHERE meta_key IN ('street_address', 'city', 'state', 'postal_code', 'country', 'email', 'phone', 'display_order', 'pickup_locations', 'mlpimforwc_ny_notice_dismissed_until', 'mulopimfwc_assigned_locations', 'mulopimfwc_manager_capabilities', '_stock', '_stock_status', '_price', '_purchase_price', '_purchase_quantity', '_sale_price', '_regular_price', 'mulopimfwc_user_locations');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_location_stock_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_location_stock_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_location_stock_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_location_stock_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_location_sale_price_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_location_sale_price_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_location_sale_price_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_location_sale_price_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_location_disabled_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_location_disabled_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_location_disabled_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_location_disabled_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_location_backorders_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_location_backorders_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_location_backorders_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_location_backorders_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_location_regular_price_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_location_regular_price_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_location_regular_price_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_location_regular_price_%';

