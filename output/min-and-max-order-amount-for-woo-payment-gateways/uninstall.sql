-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmawpg_exc_shipping_crg', 'mmawpg_cod_min', 'mmawpg_cheque_min', 'mmawpg_paypal_min', 'mmawpg_bank_min', 'mmawpg_cod_max', 'mmawpg_cheque_max', 'mmawpg_paypal_max', 'mmawpg_bank_max', 'mmawpg_calc_cart', 'woocommerce_currency_pos', 'mmawpg_error_notice_min', 'mmawpg_error_notice_max', 'mmawpg_enable_setting');

