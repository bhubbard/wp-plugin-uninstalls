-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tw-client-key', 'tw-chat-enabled', 'tw-height-offset', 'tw-hide-popouts', 'tw-hide-minimized');

