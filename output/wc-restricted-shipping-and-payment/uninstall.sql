-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('payment_condition_rules', 'shipping_condition_rules', '_wp_page_template', 'excluded_payment_gateways', 'excluded_shipping_methods');
DELETE FROM wp_usermeta WHERE meta_key IN ('payment_condition_rules', 'shipping_condition_rules', '_wp_page_template', 'excluded_payment_gateways', 'excluded_shipping_methods');
DELETE FROM wp_termmeta WHERE meta_key IN ('payment_condition_rules', 'shipping_condition_rules', '_wp_page_template', 'excluded_payment_gateways', 'excluded_shipping_methods');
DELETE FROM wp_commentmeta WHERE meta_key IN ('payment_condition_rules', 'shipping_condition_rules', '_wp_page_template', 'excluded_payment_gateways', 'excluded_shipping_methods');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_condition_rules';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_condition_rules';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_condition_rules';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_condition_rules';

