-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pushwoosh_application_code', 'pushwoosh_chrome_default_icon', 'pushwoosh_api_token', 'pushwoosh_safari_action', 'pushwoosh_safari_title');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pushwoosh_message_content', 'safari_title', 'pushwoosh_filter', 'pushwoosh_api_request', 'pushwoosh_send_push');
DELETE FROM wp_usermeta WHERE meta_key IN ('pushwoosh_message_content', 'safari_title', 'pushwoosh_filter', 'pushwoosh_api_request', 'pushwoosh_send_push');
DELETE FROM wp_termmeta WHERE meta_key IN ('pushwoosh_message_content', 'safari_title', 'pushwoosh_filter', 'pushwoosh_api_request', 'pushwoosh_send_push');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pushwoosh_message_content', 'safari_title', 'pushwoosh_filter', 'pushwoosh_api_request', 'pushwoosh_send_push');

