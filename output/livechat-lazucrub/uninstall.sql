-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('real_time_chat_public_key', 'real_time_chat_private_key', 'real_time_chat_access', 'rewrite_rules');

