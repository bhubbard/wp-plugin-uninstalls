-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tcpc_fields_currency_icon', 'tcpc_fields_regular_price', 'tcpc_fields_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('tcpc_fields_currency_icon', 'tcpc_fields_regular_price', 'tcpc_fields_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('tcpc_fields_currency_icon', 'tcpc_fields_regular_price', 'tcpc_fields_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tcpc_fields_currency_icon', 'tcpc_fields_regular_price', 'tcpc_fields_sale_price');

