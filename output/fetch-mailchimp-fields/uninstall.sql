-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailchimp_config_api_key', 'mailchimp_config_list_id');

