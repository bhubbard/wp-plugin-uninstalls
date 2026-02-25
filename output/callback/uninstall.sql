-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('callback_track', 'callback_messages', 'callback_settings', 'mailinglist_settings', 'callback_fields');

