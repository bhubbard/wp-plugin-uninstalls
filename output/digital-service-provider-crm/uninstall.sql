-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dspp_order_statuses_inserted', 'dspp_invoice_statuses_inserted', 'dspp_email_tempelates_inserted');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('coupon_discount_type', 'coupon_value', 'coupon_expiry_date', 'excluded_categories', 'stripe_key', 'paypal_email', 'bank_account', '_dspp_service_type', '_dspp_single_price', '_dspp_attributes', '_dspp_variations', '_service_price', 'custom_website_data', 'avatar', 'invoice_created', 'invoice_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('coupon_discount_type', 'coupon_value', 'coupon_expiry_date', 'excluded_categories', 'stripe_key', 'paypal_email', 'bank_account', '_dspp_service_type', '_dspp_single_price', '_dspp_attributes', '_dspp_variations', '_service_price', 'custom_website_data', 'avatar', 'invoice_created', 'invoice_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('coupon_discount_type', 'coupon_value', 'coupon_expiry_date', 'excluded_categories', 'stripe_key', 'paypal_email', 'bank_account', '_dspp_service_type', '_dspp_single_price', '_dspp_attributes', '_dspp_variations', '_service_price', 'custom_website_data', 'avatar', 'invoice_created', 'invoice_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('coupon_discount_type', 'coupon_value', 'coupon_expiry_date', 'excluded_categories', 'stripe_key', 'paypal_email', 'bank_account', '_dspp_service_type', '_dspp_single_price', '_dspp_attributes', '_dspp_variations', '_service_price', 'custom_website_data', 'avatar', 'invoice_created', 'invoice_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'order_placed_against_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'order_placed_against_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'order_placed_against_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'order_placed_against_%';

