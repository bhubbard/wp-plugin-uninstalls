-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('silva_settings', 'silva_db_version', 'woocommerce_prices_include_tax');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('silva_send_creditnota', 'silva_send_sale', 'silva_cron_refund', 'silva_cron', 'is_vat_exempt', 'VAT Number', 'vat_number', '_vat_number', '_billing_eu_vat_number', '_billing_vat_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('silva_send_creditnota', 'silva_send_sale', 'silva_cron_refund', 'silva_cron', 'is_vat_exempt', 'VAT Number', 'vat_number', '_vat_number', '_billing_eu_vat_number', '_billing_vat_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('silva_send_creditnota', 'silva_send_sale', 'silva_cron_refund', 'silva_cron', 'is_vat_exempt', 'VAT Number', 'vat_number', '_vat_number', '_billing_eu_vat_number', '_billing_vat_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('silva_send_creditnota', 'silva_send_sale', 'silva_cron_refund', 'silva_cron', 'is_vat_exempt', 'VAT Number', 'vat_number', '_vat_number', '_billing_eu_vat_number', '_billing_vat_number');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'silva_send_refund_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'silva_send_refund_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'silva_send_refund_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'silva_send_refund_%';

