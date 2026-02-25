-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lifterlms_initial_sync_made', 'omnisend_lifterlms_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'llms_billing_address_1', 'llms_billing_address_2', 'llms_billing_city', 'llms_billing_state', 'llms_billing_zip', 'llms_billing_country', 'llms_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'llms_billing_address_1', 'llms_billing_address_2', 'llms_billing_city', 'llms_billing_state', 'llms_billing_zip', 'llms_billing_country', 'llms_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'llms_billing_address_1', 'llms_billing_address_2', 'llms_billing_city', 'llms_billing_state', 'llms_billing_zip', 'llms_billing_country', 'llms_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'llms_billing_address_1', 'llms_billing_address_2', 'llms_billing_city', 'llms_billing_state', 'llms_billing_zip', 'llms_billing_country', 'llms_phone');

