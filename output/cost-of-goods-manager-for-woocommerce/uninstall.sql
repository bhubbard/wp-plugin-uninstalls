-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zcostofgoods_include_payment_fees', 'zcostofgoods_include_shipping_total_cost', 'zcostofgoods_include_total_taxes', 'zcostofgoods_enable_cost_of_goods');
DELETE FROM wp_options WHERE option_name LIKE 'zcostofgoods_wc_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_zcostofgood_order_cost', '_zcostofgood_order_order_profit', '_zcostofgood_order_order_margin', '_zcostofgood_order_order_markup', 'zcost_of_goods_cost');
DELETE FROM wp_usermeta WHERE meta_key IN ('_zcostofgood_order_cost', '_zcostofgood_order_order_profit', '_zcostofgood_order_order_margin', '_zcostofgood_order_order_markup', 'zcost_of_goods_cost');
DELETE FROM wp_termmeta WHERE meta_key IN ('_zcostofgood_order_cost', '_zcostofgood_order_order_profit', '_zcostofgood_order_order_margin', '_zcostofgood_order_order_markup', 'zcost_of_goods_cost');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_zcostofgood_order_cost', '_zcostofgood_order_order_profit', '_zcostofgood_order_order_margin', '_zcostofgood_order_order_markup', 'zcost_of_goods_cost');

