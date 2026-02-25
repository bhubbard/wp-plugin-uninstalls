-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rest_api_helper_plugins', 'imh_post_type', 'imh_error_notice', 'imh_update_notice', 'woocommerce_currency_pos');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone', 'birthday', 'company', 'address_1', 'address_2', 'city', 'state', 'postcode', 'country', 'expired', '_imh_postmeta_onesignal_message', '_wc_average_rating', '_regular_price', '_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_virtual', '_tax_status', '_tax_class', '_visibility', '_purchase_note', '_product_attributes', 'total_sales');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone', 'birthday', 'company', 'address_1', 'address_2', 'city', 'state', 'postcode', 'country', 'expired', '_imh_postmeta_onesignal_message', '_wc_average_rating', '_regular_price', '_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_virtual', '_tax_status', '_tax_class', '_visibility', '_purchase_note', '_product_attributes', 'total_sales');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone', 'birthday', 'company', 'address_1', 'address_2', 'city', 'state', 'postcode', 'country', 'expired', '_imh_postmeta_onesignal_message', '_wc_average_rating', '_regular_price', '_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_virtual', '_tax_status', '_tax_class', '_visibility', '_purchase_note', '_product_attributes', 'total_sales');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone', 'birthday', 'company', 'address_1', 'address_2', 'city', 'state', 'postcode', 'country', 'expired', '_imh_postmeta_onesignal_message', '_wc_average_rating', '_regular_price', '_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_virtual', '_tax_status', '_tax_class', '_visibility', '_purchase_note', '_product_attributes', 'total_sales');

