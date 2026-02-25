-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailchimp_apikey', 'mailchimp_listid', 'mailchimp_signup_stats', 'mailchimp_email_log', 'mailchimp_custom_form');

