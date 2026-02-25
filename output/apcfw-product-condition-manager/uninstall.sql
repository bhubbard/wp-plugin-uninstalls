-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apcmfw_product_condition_default', 'apcmfw_product_condition_show_on_shop', 'apcmfw_product_condition_shop_label', 'apcmfw_product_condition_single_label', 'apcmfw_product_condition_custom_css');

