-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('orendapay_cod_cobranca', 'orendapay_cod_transacao', 'orendapay_url_boleto', 'orendapay_linha_digitavel', 'orendapay_pix_qrcode', 'orendapay_pix_chave', 'parcelas_boleto', 'orendapay_parcelamento', 'orendapay_cartao', 'orendapay_situacao');
DELETE FROM wp_usermeta WHERE meta_key IN ('orendapay_cod_cobranca', 'orendapay_cod_transacao', 'orendapay_url_boleto', 'orendapay_linha_digitavel', 'orendapay_pix_qrcode', 'orendapay_pix_chave', 'parcelas_boleto', 'orendapay_parcelamento', 'orendapay_cartao', 'orendapay_situacao');
DELETE FROM wp_termmeta WHERE meta_key IN ('orendapay_cod_cobranca', 'orendapay_cod_transacao', 'orendapay_url_boleto', 'orendapay_linha_digitavel', 'orendapay_pix_qrcode', 'orendapay_pix_chave', 'parcelas_boleto', 'orendapay_parcelamento', 'orendapay_cartao', 'orendapay_situacao');
DELETE FROM wp_commentmeta WHERE meta_key IN ('orendapay_cod_cobranca', 'orendapay_cod_transacao', 'orendapay_url_boleto', 'orendapay_linha_digitavel', 'orendapay_pix_qrcode', 'orendapay_pix_chave', 'parcelas_boleto', 'orendapay_parcelamento', 'orendapay_cartao', 'orendapay_situacao');

