-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xa_dp_rules', 'xa_dynamic_pricing_setting', 'elex_dp_allowed_roles_to_show_pricing_table', 'dp_coupons_data', 'woocommerce_weight_unit', 'active_sitewide_plugins', 'xa_dp_rules_indexing_status', 'woocommerce_version', 'woocommerce_tax_display_shop', 'woocommerce_currency', 'woocommerce_currency_pos');
DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again';
DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later';
DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again';

