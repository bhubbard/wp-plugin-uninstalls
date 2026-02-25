-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cpw_label_text', 'woocommerce_cpw_button_text_single', 'woocommerce_cpw_button_text', 'woocommerce_cpw_minimum_text', 'woocommerce_cpw_maximum_text', 'woocommerce_cpw_suggested_text', 'woocommerce_tax_round_at_subtotal');
DELETE FROM wp_options WHERE option_name LIKE '%label_text';
DELETE FROM wp_options WHERE option_name LIKE '%suggested_text';
DELETE FROM wp_options WHERE option_name LIKE '%minimum_text';
DELETE FROM wp_options WHERE option_name LIKE '%maximum_text';
DELETE FROM wp_options WHERE option_name LIKE '%button_text';
DELETE FROM wp_options WHERE option_name LIKE '%button_text_single';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_switching_cpw_price';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_switching';

