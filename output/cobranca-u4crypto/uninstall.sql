-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_base_color', 'dokan_selling');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vendor-cnpj', 'u4cryptoItemId', 'boletolink', 'boleto', 'boletovencimento', 'boletoid', 'documentNumber', 'transaction', 'u4cryptoTextContent', 'u4cryptoImageContent', 'u4cryptoQrcodeURL', 'u4cryptoReference', 'u4cryptoPaymentStart', '_payment_method', 'u4cryptoQRcodePayment');
DELETE FROM wp_usermeta WHERE meta_key IN ('vendor-cnpj', 'u4cryptoItemId', 'boletolink', 'boleto', 'boletovencimento', 'boletoid', 'documentNumber', 'transaction', 'u4cryptoTextContent', 'u4cryptoImageContent', 'u4cryptoQrcodeURL', 'u4cryptoReference', 'u4cryptoPaymentStart', '_payment_method', 'u4cryptoQRcodePayment');
DELETE FROM wp_termmeta WHERE meta_key IN ('vendor-cnpj', 'u4cryptoItemId', 'boletolink', 'boleto', 'boletovencimento', 'boletoid', 'documentNumber', 'transaction', 'u4cryptoTextContent', 'u4cryptoImageContent', 'u4cryptoQrcodeURL', 'u4cryptoReference', 'u4cryptoPaymentStart', '_payment_method', 'u4cryptoQRcodePayment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vendor-cnpj', 'u4cryptoItemId', 'boletolink', 'boleto', 'boletovencimento', 'boletoid', 'documentNumber', 'transaction', 'u4cryptoTextContent', 'u4cryptoImageContent', 'u4cryptoQrcodeURL', 'u4cryptoReference', 'u4cryptoPaymentStart', '_payment_method', 'u4cryptoQRcodePayment');

