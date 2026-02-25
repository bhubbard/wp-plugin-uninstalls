-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ntmrr_blacklisted_emails', 'ntmrr_whitelisted_emails', 'ntmrr_email_not_approved_message', 'ntmrr_redirect_on_unapproved', 'ntmrr_redirect_on_unapproved_url', 'ntmrr_registration_form_message');

