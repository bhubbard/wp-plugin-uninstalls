-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cart66_to_mailchimp_apikey', 'cart66_to_mailchimp_listid');

