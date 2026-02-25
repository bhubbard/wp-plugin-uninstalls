-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ph_mailchimp_api_key', 'ph_mailchimp_ga');

