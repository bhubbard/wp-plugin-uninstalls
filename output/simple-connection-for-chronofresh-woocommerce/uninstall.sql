-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sccfcw_debug_mode', 'sccfcw_account_number', 'sccfcw_password', 'sccfcw_shipper_phone', 'sccfcw_max_weight_per_parcel', 'woocommerce_store_name', 'woocommerce_email_from_name', 'woocommerce_store_address_2', 'woocommerce_store_address', 'woocommerce_store_postcode', 'woocommerce_store_city', 'woocommerce_email_from_address', 'sccfcw_review_notice_dismissed', 'sccfcw_premium_dismissed', 'sccfcw_test_notice', 'sccfcw_logs');
DELETE FROM wp_options WHERE option_name LIKE 'sccfcw_available_relays_%';
DELETE FROM wp_options WHERE option_name LIKE 'sccfcw_relay_points_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_chronofresh_labels', '_temperature_type', '_chronofresh_id_relais', '_chronofresh_relay_name', '_chronofresh_relay_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_chronofresh_labels', '_temperature_type', '_chronofresh_id_relais', '_chronofresh_relay_name', '_chronofresh_relay_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_chronofresh_labels', '_temperature_type', '_chronofresh_id_relais', '_chronofresh_relay_name', '_chronofresh_relay_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_chronofresh_labels', '_temperature_type', '_chronofresh_id_relais', '_chronofresh_relay_name', '_chronofresh_relay_address');

