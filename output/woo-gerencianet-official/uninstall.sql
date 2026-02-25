-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wc_gerencianet_assinaturas_boleto_settings', 'woocommerce_wc_gerencianet_assinaturas_cartao_settings', 'woocommerce_wc_gerencianet_assinaturas_pix_settings', 'woocommerce_currency');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gn_billing_neighborhood', 'gn_billing_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('gn_billing_neighborhood', 'gn_billing_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('gn_billing_neighborhood', 'gn_billing_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gn_billing_neighborhood', 'gn_billing_number');

