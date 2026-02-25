-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sptotal_total_text', 'sptotal_total_position', 'sptotal_delay', 'woocommerce_price_num_decimals', 'rate_sptotal', 'sptotal_cart_btn', 'spline_if_inline', 'sptotal_background', 'sptotal_price_color', 'sptotal_label_color', 'sptotal_cart_btn_txt', 'woocommerce_currency_pos', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'sptotal_text_align');

