-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_settings_woocommercenfe_tipo_pessoa', 'wc_settings_woocommercenfe_transportadoras', 'wc_settings_woocommercenfe_payment_methods', 'wc_settings_woocommercenfe_payment_descs', 'wc_settings_woocommercenfe_cnpj_payments', 'wmbr_auto_invoice_errors', 'woocommerce_enable_order_comments', 'old_credentials', 'wc_settings_woocommercenfe_mascara_campos', 'wc_settings_woocommercenfe_cep', 'wc_settings_woocommercenfe_bairro', 'wc_settings_woocommercenfe_imposto', 'wc_settings_woocommercenfe_ncm', 'wc_settings_woocommercenfe_cest', 'wc_settings_woocommercenfe_origem', 'wc_settings_woocommercenfe_envio_email', 'wc_settings_woocommercenfe_natureza_operacao', 'wc_settings_woocommercenfe_ambiente', 'wc_settings_woocommercenfe_data_emissao', 'wc_settings_woocommercenfe_intermediador', 'wc_settings_woocommercenfe_cnpj_intermediador', 'wc_settings_woocommercenfe_id_intermediador', 'wc_settings_woocommercenfe_fisco_inf', 'wc_settings_woocommercenfe_cons_inf', 'wc_settings_woocommercenfe_imposto_nfse', 'wc_settings_woocommercenfe_incluir_taxas_nfse', 'wc_settings_woocommercenfe_servico_inf', 'wc_settings_woocommercenfe_tipo_desconto_nfse', 'woocommerce_weight_unit', 'wc_settings_woocommercenfe_bearer_access_token', 'wc_settings_woocommercenfe_access_token', 'wc_settings_woocommercenfe_access_token_secret', 'wc_settings_woocommercenfe_consumer_key', 'wc_settings_woocommercenfe_consumer_secret', 'wc_settings_parcelas_ebanx', 'woocommercenfe_error_messages', 'woocommercenfe_success_messages', 'wc_settings_woocommercenfe_emissao_automatica', 'wc_settings_woocommercenfe_email_notification', 'validadeCertificado', 'cached_nfe_id', 'cached_nfse_id');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'cached_nfe_doc_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nfe_tipo_produto', '_nfe_product_others', '_nfe_ignorar_nfe', '_nfe_classe_imposto', '_nfe_codigo_ncm', '_nfe_codigo_cest', '_nfe_unidade', '_nfe_origem', '_nfe_produto_informacoes_adicionais', '_nfe_codigo_ean', '_nfe_gtin_tributavel', '_nfe_ind_escala', '_nfe_cnpj_fabricante', 'billing_number', 'billing_neighborhood', 'shipping_number', 'shipping_neighborhood', '_ncm', 'wmbr_dismiss_auto_invoice_notice', 'variable_ncm', 'billing_phone', '_virtual');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nfe_tipo_produto', '_nfe_product_others', '_nfe_ignorar_nfe', '_nfe_classe_imposto', '_nfe_codigo_ncm', '_nfe_codigo_cest', '_nfe_unidade', '_nfe_origem', '_nfe_produto_informacoes_adicionais', '_nfe_codigo_ean', '_nfe_gtin_tributavel', '_nfe_ind_escala', '_nfe_cnpj_fabricante', 'billing_number', 'billing_neighborhood', 'shipping_number', 'shipping_neighborhood', '_ncm', 'wmbr_dismiss_auto_invoice_notice', 'variable_ncm', 'billing_phone', '_virtual');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nfe_tipo_produto', '_nfe_product_others', '_nfe_ignorar_nfe', '_nfe_classe_imposto', '_nfe_codigo_ncm', '_nfe_codigo_cest', '_nfe_unidade', '_nfe_origem', '_nfe_produto_informacoes_adicionais', '_nfe_codigo_ean', '_nfe_gtin_tributavel', '_nfe_ind_escala', '_nfe_cnpj_fabricante', 'billing_number', 'billing_neighborhood', 'shipping_number', 'shipping_neighborhood', '_ncm', 'wmbr_dismiss_auto_invoice_notice', 'variable_ncm', 'billing_phone', '_virtual');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nfe_tipo_produto', '_nfe_product_others', '_nfe_ignorar_nfe', '_nfe_classe_imposto', '_nfe_codigo_ncm', '_nfe_codigo_cest', '_nfe_unidade', '_nfe_origem', '_nfe_produto_informacoes_adicionais', '_nfe_codigo_ean', '_nfe_gtin_tributavel', '_nfe_ind_escala', '_nfe_cnpj_fabricante', 'billing_number', 'billing_neighborhood', 'shipping_number', 'shipping_neighborhood', '_ncm', 'wmbr_dismiss_auto_invoice_notice', 'variable_ncm', 'billing_phone', '_virtual');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_persontype';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_persontype';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_persontype';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_persontype';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cpf';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cpf';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cpf';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cpf';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cnpj';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cnpj';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cnpj';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cnpj';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ie';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ie';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ie';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ie';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_birthdate';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_birthdate';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_birthdate';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_birthdate';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sex';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sex';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sex';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sex';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cellphone';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cellphone';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cellphone';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cellphone';

