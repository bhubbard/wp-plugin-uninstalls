-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crypto_converter_coins', 'crypto_converter_fiat', 'crypto_converter_all', 'crypto_converter_footer', 'crypto_converter_text_color', 'crypto_converter_change_color', 'crypto_converter_box_color');

