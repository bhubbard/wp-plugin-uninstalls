-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_force_ssl_checkout', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_orginal_paygate_transaction_type', '_paygate_order_id', '_paygate_transaction_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_orginal_paygate_transaction_type', '_paygate_order_id', '_paygate_transaction_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_orginal_paygate_transaction_type', '_paygate_order_id', '_paygate_transaction_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_orginal_paygate_transaction_type', '_paygate_order_id', '_paygate_transaction_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_approval_code_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_approval_code_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_approval_code_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_approval_code_for_%';

