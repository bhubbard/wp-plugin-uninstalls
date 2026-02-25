-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('melhor_envio_option_where_show_calculator', 'woocommerce_weight_unit', 'melhor_envio_path_plugins', 'wpmelhorenvio_token', 'woocommerce_dimension_unit', 'melhorenvio_hide_calculator_product', 'melhorenvio_options', 'melhorenvio_use_insurancce', 'melhor_envio_option_label', 'melhor_envio_option_dimension_default', 'melhorenvio_installed', 'melhorenvio_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_cpf', '_billing_cnpj', '_billing_cellphone', '_shipping_number', '_shipping_neighborhood', 'melhor_envio_log_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_cpf', '_billing_cnpj', '_billing_cellphone', '_shipping_number', '_shipping_neighborhood', 'melhor_envio_log_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_cpf', '_billing_cnpj', '_billing_cellphone', '_shipping_number', '_shipping_neighborhood', 'melhor_envio_log_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_cpf', '_billing_cnpj', '_billing_cellphone', '_shipping_number', '_shipping_neighborhood', 'melhor_envio_log_order');

