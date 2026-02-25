-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mbwp_helper', 'whp_setting', 'btnCartName', 'convertZeroToContact', 'showBuyNow', 'tiki', 'shopee', 'lazada', 'sendo', 'fullname', 'address', 'country', 'company', 'zipCode', 'province', 'momo', 'zaloPay', 'vnPay', 'shopeePay', 'notify', 'vat', 'compact', 'telegram', 'telegramToken', 'telegramChatid', 'duplicate_page_options', 'rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_phone', 'mb_hpwc_invoice_vat_input', 'billing_vat_company', 'billing_vat_tax_code', 'billing_vat_company_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_phone', 'mb_hpwc_invoice_vat_input', 'billing_vat_company', 'billing_vat_tax_code', 'billing_vat_company_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_phone', 'mb_hpwc_invoice_vat_input', 'billing_vat_company', 'billing_vat_tax_code', 'billing_vat_company_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_phone', 'mb_hpwc_invoice_vat_input', 'billing_vat_company', 'billing_vat_tax_code', 'billing_vat_company_address');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'product-ecommerce-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'product-ecommerce-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'product-ecommerce-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product-ecommerce-%';

