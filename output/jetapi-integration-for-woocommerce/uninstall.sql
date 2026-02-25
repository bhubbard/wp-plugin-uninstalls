-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetapi_settings', 'jeti_settings', 'jeti_bearer_token', 'jeti_authenticated', 'jeti_campaigns', 'jetapi_sender_name', 'jeti_bulk_message_queue', 'active_sitewide_plugins', 'jeti_activation_notice', 'settings_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_phone');

