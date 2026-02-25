-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spreebie_barter_ethereum_address', 'spreebie_barter_widget_text', 'spreebie_barter_error_stage_children');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('customer_name', 'customer_email', 'payment_currency', 'payment_amount', 'payment_description', 'payment_token', 'payment_settled', 'donation_currency', 'donation_description', 'donation_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('customer_name', 'customer_email', 'payment_currency', 'payment_amount', 'payment_description', 'payment_token', 'payment_settled', 'donation_currency', 'donation_description', 'donation_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('customer_name', 'customer_email', 'payment_currency', 'payment_amount', 'payment_description', 'payment_token', 'payment_settled', 'donation_currency', 'donation_description', 'donation_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('customer_name', 'customer_email', 'payment_currency', 'payment_amount', 'payment_description', 'payment_token', 'payment_settled', 'donation_currency', 'donation_description', 'donation_token');

