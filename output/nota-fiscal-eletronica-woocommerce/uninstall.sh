#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_woocommercenfe_tipo_pessoa'
wp option delete 'wc_settings_woocommercenfe_transportadoras'
wp option delete 'wc_settings_woocommercenfe_payment_methods'
wp option delete 'wc_settings_woocommercenfe_payment_descs'
wp option delete 'wc_settings_woocommercenfe_cnpj_payments'
wp option delete 'wmbr_auto_invoice_errors'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'old_credentials'
wp option delete 'wc_settings_woocommercenfe_mascara_campos'
wp option delete 'wc_settings_woocommercenfe_cep'
wp option delete 'wc_settings_woocommercenfe_bairro'
wp option delete 'wc_settings_woocommercenfe_imposto'
wp option delete 'wc_settings_woocommercenfe_ncm'
wp option delete 'wc_settings_woocommercenfe_cest'
wp option delete 'wc_settings_woocommercenfe_origem'
wp option delete 'wc_settings_woocommercenfe_envio_email'
wp option delete 'wc_settings_woocommercenfe_natureza_operacao'
wp option delete 'wc_settings_woocommercenfe_ambiente'
wp option delete 'wc_settings_woocommercenfe_data_emissao'
wp option delete 'wc_settings_woocommercenfe_intermediador'
wp option delete 'wc_settings_woocommercenfe_cnpj_intermediador'
wp option delete 'wc_settings_woocommercenfe_id_intermediador'
wp option delete 'wc_settings_woocommercenfe_fisco_inf'
wp option delete 'wc_settings_woocommercenfe_cons_inf'
wp option delete 'wc_settings_woocommercenfe_imposto_nfse'
wp option delete 'wc_settings_woocommercenfe_incluir_taxas_nfse'
wp option delete 'wc_settings_woocommercenfe_servico_inf'
wp option delete 'wc_settings_woocommercenfe_tipo_desconto_nfse'
wp option delete 'woocommerce_weight_unit'
wp option delete 'wc_settings_woocommercenfe_bearer_access_token'
wp option delete 'wc_settings_woocommercenfe_access_token'
wp option delete 'wc_settings_woocommercenfe_access_token_secret'
wp option delete 'wc_settings_woocommercenfe_consumer_key'
wp option delete 'wc_settings_woocommercenfe_consumer_secret'
wp option delete 'wc_settings_parcelas_ebanx'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommercenfe_error_messages'
wp option delete 'woocommercenfe_success_messages'
wp option delete 'wc_settings_woocommercenfe_emissao_automatica'
wp option delete 'wc_settings_woocommercenfe_email_notification'

# Delete Transients
wp transient delete 'validadeCertificado'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cached_nfe_doc_%' OR option_name LIKE '_site_transient_cached_nfe_doc_%'"
wp transient delete 'cached_nfe_id'
wp transient delete 'cached_nfse_id'

# Clear Cron Jobs
wp cron event delete 'woocommerce_nfe_clean_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfe_tipo_produto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfe_tipo_produto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfe_tipo_produto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfe_tipo_produto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfe_product_others'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfe_product_others'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfe_product_others'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfe_product_others'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfe_ignorar_nfe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfe_ignorar_nfe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfe_ignorar_nfe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfe_ignorar_nfe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfe_classe_imposto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfe_classe_imposto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfe_classe_imposto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfe_classe_imposto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfe_codigo_ncm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfe_codigo_ncm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfe_codigo_ncm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfe_codigo_ncm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfe_codigo_cest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfe_codigo_cest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfe_codigo_cest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfe_codigo_cest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfe_unidade'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfe_unidade'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfe_unidade'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfe_unidade'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfe_origem'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfe_origem'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfe_origem'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfe_origem'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfe_produto_informacoes_adicionais'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfe_produto_informacoes_adicionais'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfe_produto_informacoes_adicionais'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfe_produto_informacoes_adicionais'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfe_codigo_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfe_codigo_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfe_codigo_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfe_codigo_ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfe_gtin_tributavel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfe_gtin_tributavel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfe_gtin_tributavel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfe_gtin_tributavel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfe_ind_escala'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfe_ind_escala'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfe_ind_escala'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfe_ind_escala'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfe_cnpj_fabricante'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfe_cnpj_fabricante'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfe_cnpj_fabricante'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfe_cnpj_fabricante'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_persontype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_persontype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_persontype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_persontype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cpf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cpf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cpf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cpf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cnpj'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cnpj'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cnpj'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cnpj'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ie'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ie'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ie'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ie'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_birthdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_birthdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_birthdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_birthdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cellphone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cellphone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cellphone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cellphone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ncm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ncm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ncm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ncm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmbr_dismiss_auto_invoice_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmbr_dismiss_auto_invoice_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmbr_dismiss_auto_invoice_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmbr_dismiss_auto_invoice_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variable_ncm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variable_ncm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variable_ncm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variable_ncm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
