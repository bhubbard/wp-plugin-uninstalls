-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_paytrtaksit_content_title', 'woocommerce_paytrtaksit_description_top', 'woocommerce_paytrtaksit_description_bottom', 'woocommerce_paytrtaksit_tax_included', 'woocommerce_paytrtaksit_merchant_id', 'woocommerce_paytrtaksit_token', 'woocommerce_paytrtaksit_max_installment', 'woocommerce_paytrtaksit_extra_installment', 'woocommerce_paytrtaksit_product_tab_title', 'woocommerce_paytrtaksit_settings');
DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_paytrtaksit_%';

