-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_printful_settings', 'woocommerce_checkout_phone_field', 'woocommerce_calc_taxes', 'woocommerce_tax_based_on', 'printful_stats', 'printful_orders', 'printful_carriers', 'printful_tax_countries');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pf_customizable', 'pf_size_chart', 'pf_advanced_size_chart');
DELETE FROM wp_usermeta WHERE meta_key IN ('pf_customizable', 'pf_size_chart', 'pf_advanced_size_chart');
DELETE FROM wp_termmeta WHERE meta_key IN ('pf_customizable', 'pf_size_chart', 'pf_advanced_size_chart');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pf_customizable', 'pf_size_chart', 'pf_advanced_size_chart');

