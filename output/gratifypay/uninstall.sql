-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_gratify_pay_api_error', 'woocommerce_currency', 'gratify_pay-admin-activation-notice', 'gratify_pay-admin-connection-failed-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gratify_pay_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gratify_pay_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gratify_pay_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gratify_pay_token');

