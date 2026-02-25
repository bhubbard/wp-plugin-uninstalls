-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('espd_email_notification', 'espd_email_subject', 'espd_email_sender_mail', 'espd_email_mail_content', 'espd_stripe_public_key', 'espad_stripe_metadata_campaign', 'espad_stripe_metadata_project', 'espad_stripe_metadata_product', 'espad_currency', 'espad_checkout_form_id', 'espd_stripe_secret_key', 'espd_membership_last_check', 'espd_membership_status', 'espd_welcome_page_visited');

