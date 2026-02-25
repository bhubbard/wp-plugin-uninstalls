-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ppsas_general_settings', 'ppsas_popup_settings', 'ppsas_page_option_settings', 'ppsas_product_option_settings', 'ppsas_global_options', 'woocommerce_shop_page_id');

