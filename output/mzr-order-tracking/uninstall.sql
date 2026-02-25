-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mzr_shipping_providers', 'mzr_enable_order_tracking', 'mzr_enable_tracking_email', 'mzr_tracking_email_template', 'mzr_show_in_customer_account');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mzr_tracking_provider', '_mzr_tracking_number', '_mzr_date_shipped');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mzr_tracking_provider', '_mzr_tracking_number', '_mzr_date_shipped');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mzr_tracking_provider', '_mzr_tracking_number', '_mzr_date_shipped');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mzr_tracking_provider', '_mzr_tracking_number', '_mzr_date_shipped');

