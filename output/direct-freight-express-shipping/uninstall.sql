-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('direct_freight_express_shipping_settings', 'direct_freight_express_api_key', 'direct_freight_express_account_number', 'direct_freight_express_insurance_fee', 'direct_freight_express_insurance_fee_type', 'direct_freight_express_markup', 'direct_freight_express_markup_type');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('direct_freight_express_shipping_rate_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('direct_freight_express_shipping_rate_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('direct_freight_express_shipping_rate_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('direct_freight_express_shipping_rate_type');

