-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_mundipagg_version_on_install', 'woocommerce_force_ssl_checkout');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mundipagg_credit_card_data', '_transaction_id', '_mundipagg_banking_ticket_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mundipagg_credit_card_data', '_transaction_id', '_mundipagg_banking_ticket_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mundipagg_credit_card_data', '_transaction_id', '_mundipagg_banking_ticket_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mundipagg_credit_card_data', '_transaction_id', '_mundipagg_banking_ticket_data');

