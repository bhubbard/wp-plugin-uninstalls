-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gift_email_subject', 'gift_email_bcc', 'gift_bank_account');

