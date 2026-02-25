-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smsify-api-key', 'smsify_integrations', 'smsify_webhooks', 'user-group-meta', 'smsify_enable_sender_id_override', 'smsify-enable-sender-id-override');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smsify_mobile', 'smsify_message', 'smsify_sender_id', 'smsify-track-optin');
DELETE FROM wp_usermeta WHERE meta_key IN ('smsify_mobile', 'smsify_message', 'smsify_sender_id', 'smsify-track-optin');
DELETE FROM wp_termmeta WHERE meta_key IN ('smsify_mobile', 'smsify_message', 'smsify_sender_id', 'smsify-track-optin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smsify_mobile', 'smsify_message', 'smsify_sender_id', 'smsify-track-optin');

