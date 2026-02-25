-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_calc_taxes');
DELETE FROM wp_options WHERE option_name LIKE 'asrfwoo_shipping_groups_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_condition_type', '_operator', '_cost', '_value', '_group_conditions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_condition_type', '_operator', '_cost', '_value', '_group_conditions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_condition_type', '_operator', '_cost', '_value', '_group_conditions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_condition_type', '_operator', '_cost', '_value', '_group_conditions');

