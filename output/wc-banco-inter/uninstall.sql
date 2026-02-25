-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_base_color', 'plugin_banco_inter_licence_key');
DELETE FROM wp_options WHERE option_name LIKE '%_PathKey';
DELETE FROM wp_options WHERE option_name LIKE '%_PathCRT';
DELETE FROM wp_options WHERE option_name LIKE '%_WebhookCRT';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method', 'boleto', 'nossonumero', 'codigoSolicitacao', 'transaction', 'pixCopiaECola', 'pixTxid', 'billing_cpf', 'billing_cnpj', 'pix');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method', 'boleto', 'nossonumero', 'codigoSolicitacao', 'transaction', 'pixCopiaECola', 'pixTxid', 'billing_cpf', 'billing_cnpj', 'pix');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method', 'boleto', 'nossonumero', 'codigoSolicitacao', 'transaction', 'pixCopiaECola', 'pixTxid', 'billing_cpf', 'billing_cnpj', 'pix');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method', 'boleto', 'nossonumero', 'codigoSolicitacao', 'transaction', 'pixCopiaECola', 'pixTxid', 'billing_cpf', 'billing_cnpj', 'pix');

