-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_mailchimp_subscribe_status', 'simple_mailchimp_success_message', 'simple_mailchimp_error_message', 'simple_mailchimp_api_key', 'simple_mailchimp_default_list_id', 'simple_mailchimp_default_list');

