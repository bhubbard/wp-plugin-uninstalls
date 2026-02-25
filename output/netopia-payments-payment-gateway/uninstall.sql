-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_netopiapayments_settings', 'woocommerce_pay_page_id', 'woocommerce_netopiapayments_sandbox_cer_content', 'woocommerce_netopiapayments_live_cer_content', 'woocommerce_netopiapayments_sandbox_key_content', 'woocommerce_netopiapayments_live_key_content');

