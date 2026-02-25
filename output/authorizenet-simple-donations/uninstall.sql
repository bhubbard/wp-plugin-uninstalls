-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wds_donation_login_id', 'wds_donation_transaction_key', 'wds_donation_mode', 'wds_processor_description', 'wds_thankyou_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('donor_firstname', 'donor_lastname', 'donor_email', 'donation_amount', 'transaction_id', 'last_4', 'approval_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('donor_firstname', 'donor_lastname', 'donor_email', 'donation_amount', 'transaction_id', 'last_4', 'approval_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('donor_firstname', 'donor_lastname', 'donor_email', 'donation_amount', 'transaction_id', 'last_4', 'approval_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('donor_firstname', 'donor_lastname', 'donor_email', 'donation_amount', 'transaction_id', 'last_4', 'approval_code');

