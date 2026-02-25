-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yahoo_status-my-yahoo-id', 'yahoo_status-tmp-yahoo-id', 'yahoo_status-tmp-yahoo-pass', 'yahoo_status-friend-cache', 'yahoo-status-bot-changed', 'yahoo_status-show-status', 'yahoo_status-title');

