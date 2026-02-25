-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vault_id', 'vault_key', 'subscription_id', 'first_name', 'last_name', 'billing_city', 'billing_country', 'billing_state', 'billing_address_1', 'billing_address_2', 'billing_postcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('vault_id', 'vault_key', 'subscription_id', 'first_name', 'last_name', 'billing_city', 'billing_country', 'billing_state', 'billing_address_1', 'billing_address_2', 'billing_postcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('vault_id', 'vault_key', 'subscription_id', 'first_name', 'last_name', 'billing_city', 'billing_country', 'billing_state', 'billing_address_1', 'billing_address_2', 'billing_postcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vault_id', 'vault_key', 'subscription_id', 'first_name', 'last_name', 'billing_city', 'billing_country', 'billing_state', 'billing_address_1', 'billing_address_2', 'billing_postcode');

