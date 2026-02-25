-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pushpad_settings', 'pushpad_delivery_result');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pushpad_send_notification');
DELETE FROM wp_usermeta WHERE meta_key IN ('pushpad_send_notification');
DELETE FROM wp_termmeta WHERE meta_key IN ('pushpad_send_notification');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pushpad_send_notification');

