-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pwmellat_dismissed', 'pwmellatnew_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('WC_BankMellat_settleSaleOrderId', 'WC_BankMellat_settleSaleReferenceId', '_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('WC_BankMellat_settleSaleOrderId', 'WC_BankMellat_settleSaleReferenceId', '_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('WC_BankMellat_settleSaleOrderId', 'WC_BankMellat_settleSaleReferenceId', '_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('WC_BankMellat_settleSaleOrderId', 'WC_BankMellat_settleSaleReferenceId', '_transaction_id');

