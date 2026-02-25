-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ext_cst_status', 'ext_cst_label', 'ext_cst_label_billing', 'ext_cst_amount_type', 'ext_cst_amount', 'ext_cst_label_css', 'ext_cst_inc_ship_costs', 'ext_cst_inc_tax', 'ext_cst_extra', 'ext_cst_auto_checked', 'woocommerce_tax_total_display');

