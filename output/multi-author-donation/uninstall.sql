-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('multi_author_donation_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('multi_author_donation_paypal_email', 'multi_author_donation_stripe_account_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('multi_author_donation_paypal_email', 'multi_author_donation_stripe_account_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('multi_author_donation_paypal_email', 'multi_author_donation_stripe_account_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('multi_author_donation_paypal_email', 'multi_author_donation_stripe_account_id');

