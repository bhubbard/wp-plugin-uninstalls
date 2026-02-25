-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('psms_pac_fail', 'psms_woo_triggers', 'wc_any_shipping_notify_available_companies', 'psms-disparopro-token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('psms_notify', '_wc_pagarme_transaction_data', '_wc_pagarme_pix_payment_qr_code', '_moip_payment_links', 'wc_paghiper_data', '_mundipagg_banking_ticket_data', '_transacao_boletoURL', 'boletofacil_url', 'loja5_woo_itau_shopline_link_boleto', 'loja5_woo_bradesco_api_boleto_dados');
DELETE FROM wp_usermeta WHERE meta_key IN ('psms_notify', '_wc_pagarme_transaction_data', '_wc_pagarme_pix_payment_qr_code', '_moip_payment_links', 'wc_paghiper_data', '_mundipagg_banking_ticket_data', '_transacao_boletoURL', 'boletofacil_url', 'loja5_woo_itau_shopline_link_boleto', 'loja5_woo_bradesco_api_boleto_dados');
DELETE FROM wp_termmeta WHERE meta_key IN ('psms_notify', '_wc_pagarme_transaction_data', '_wc_pagarme_pix_payment_qr_code', '_moip_payment_links', 'wc_paghiper_data', '_mundipagg_banking_ticket_data', '_transacao_boletoURL', 'boletofacil_url', 'loja5_woo_itau_shopline_link_boleto', 'loja5_woo_bradesco_api_boleto_dados');
DELETE FROM wp_commentmeta WHERE meta_key IN ('psms_notify', '_wc_pagarme_transaction_data', '_wc_pagarme_pix_payment_qr_code', '_moip_payment_links', 'wc_paghiper_data', '_mundipagg_banking_ticket_data', '_transacao_boletoURL', 'boletofacil_url', 'loja5_woo_itau_shopline_link_boleto', 'loja5_woo_bradesco_api_boleto_dados');

