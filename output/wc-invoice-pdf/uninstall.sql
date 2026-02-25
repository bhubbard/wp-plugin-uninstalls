-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', 'cron', 'woocommerce_default_country', 'woocommerce_bacs_accounts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_company', '_ispconfig_period', '_wc_pdf_b2c', '_date_paid', '_paid_date', '_billing_email', '_qty_suffix', '_qty_suffix_plural');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_company', '_ispconfig_period', '_wc_pdf_b2c', '_date_paid', '_paid_date', '_billing_email', '_qty_suffix', '_qty_suffix_plural');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_company', '_ispconfig_period', '_wc_pdf_b2c', '_date_paid', '_paid_date', '_billing_email', '_qty_suffix', '_qty_suffix_plural');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_company', '_ispconfig_period', '_wc_pdf_b2c', '_date_paid', '_paid_date', '_billing_email', '_qty_suffix', '_qty_suffix_plural');

