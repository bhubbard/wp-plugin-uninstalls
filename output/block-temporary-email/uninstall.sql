-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('istempmail_token', 'istempmail_blocked_list', 'istempmail_whitelist', 'istempmail_blacklist', 'istempmail_check', 'istempmail_check_scope', 'istempmail_ignored_uris', 'istempmail_ignored_payload');

