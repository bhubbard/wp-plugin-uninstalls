-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quiqup_connector_activation_redirect', 'quiqup_connector_api_token', 'quiqup_enable_national_address');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_national_address', 'billing_national_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_national_address', 'billing_national_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_national_address', 'billing_national_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_national_address', 'billing_national_address');

