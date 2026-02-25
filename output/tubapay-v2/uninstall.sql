-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tubapay2_statuses_upgrade', 'tubapay2_token', 'tubapay2_refresh_token', 'tubapay2_token_expires', 'woocommerce_tubapay2_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method', 'agreementNumber', 'tubapay2Response', 'raty', 'tubapay2_RODO_BP');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method', 'agreementNumber', 'tubapay2Response', 'raty', 'tubapay2_RODO_BP');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method', 'agreementNumber', 'tubapay2Response', 'raty', 'tubapay2_RODO_BP');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method', 'agreementNumber', 'tubapay2Response', 'raty', 'tubapay2_RODO_BP');

