-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wc_ecpayinvoice_active_model');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('payment_method', 'BankCode', 'vAccount', 'ExpireDate', 'PaymentNo', 'card4no', '_total_success_times');
DELETE FROM wp_usermeta WHERE meta_key IN ('payment_method', 'BankCode', 'vAccount', 'ExpireDate', 'PaymentNo', 'card4no', '_total_success_times');
DELETE FROM wp_termmeta WHERE meta_key IN ('payment_method', 'BankCode', 'vAccount', 'ExpireDate', 'PaymentNo', 'card4no', '_total_success_times');
DELETE FROM wp_commentmeta WHERE meta_key IN ('payment_method', 'BankCode', 'vAccount', 'ExpireDate', 'PaymentNo', 'card4no', '_total_success_times');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_payment_tag';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_payment_tag';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_payment_tag';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_payment_tag';

