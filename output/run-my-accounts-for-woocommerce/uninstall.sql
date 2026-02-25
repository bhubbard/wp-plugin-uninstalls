-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_rma_settings', 'wc_rma_settings_accounting', 'wc_rma_version', 'wc_rma_db_version', 'wc_rma_settings_collective_invoice', 'rma-wc-page-activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rma_billing_account', 'billing_title', 'rma_customer', 'rma_payment_period');
DELETE FROM wp_usermeta WHERE meta_key IN ('rma_billing_account', 'billing_title', 'rma_customer', 'rma_payment_period');
DELETE FROM wp_termmeta WHERE meta_key IN ('rma_billing_account', 'billing_title', 'rma_customer', 'rma_payment_period');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rma_billing_account', 'billing_title', 'rma_customer', 'rma_payment_period');

