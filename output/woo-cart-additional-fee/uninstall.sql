-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcfee_enable', 'wcfee_label', 'wcfee_type', 'wcfee_fixed', 'wcfee_percentage', 'wcfee_enable_minimum', 'wcfee_enable_maximum', 'wcfee_enable_product_filter', 'wcfee_minimum', 'wcfee_maximum', 'wcfee_product_filter');

