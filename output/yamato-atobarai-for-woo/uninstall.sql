-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_footer_text', 'woocommerce_kuronekoatobarai_settings', 'woocommerce_checkout_page_id', 'kuatowc_settlement_fees');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

