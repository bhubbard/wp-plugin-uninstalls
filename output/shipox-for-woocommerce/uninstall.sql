-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wing_service_config', 'wing_merchant_address', 'wing_merchant_config', 'wing_marketplace_settings', 'shipox_version', 'wing_order_config', '_wcfmmp_shipox_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shipping_phone', '_wing_order_number', '_wing_order_id', '_wcfmmp_shipox_settings', '_wcfmmp_shipping', 'wcfmmp_profile_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('shipping_phone', '_wing_order_number', '_wing_order_id', '_wcfmmp_shipox_settings', '_wcfmmp_shipping', 'wcfmmp_profile_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('shipping_phone', '_wing_order_number', '_wing_order_id', '_wcfmmp_shipox_settings', '_wcfmmp_shipping', 'wcfmmp_profile_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shipping_phone', '_wing_order_number', '_wing_order_id', '_wcfmmp_shipox_settings', '_wcfmmp_shipping', 'wcfmmp_profile_settings');

