-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooss_option_enable', 'sendbox_data', 'woocommerce_store_city', 'woocommerce_store_address', 'woocommerce_currency', 'wooss_connection_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wooss_tracking_code', 'wooss_extra_fees');
DELETE FROM wp_usermeta WHERE meta_key IN ('wooss_tracking_code', 'wooss_extra_fees');
DELETE FROM wp_termmeta WHERE meta_key IN ('wooss_tracking_code', 'wooss_extra_fees');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wooss_tracking_code', 'wooss_extra_fees');

