-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('paldesk-api-key-chat', 'paldesk-api-key-notification', 'paldesk-api-key-feedback');

