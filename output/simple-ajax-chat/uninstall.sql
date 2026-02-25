-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sac_export', 'sac_options', 'sac_censors', 'simple-ajax-chat-dismiss-notice', 'sac_logged_users');

