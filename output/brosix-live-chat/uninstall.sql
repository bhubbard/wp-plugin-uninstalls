-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brosix-chat-api-key', 'brosix-chat-id', 'brosix-chat-status', 'brosix-home-status', 'brosix-chat-network');

