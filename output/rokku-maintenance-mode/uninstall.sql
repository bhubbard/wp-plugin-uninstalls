-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rokkmamo_enabled', 'rokkmamo_logo_id', 'rokkmamo_headline', 'rokkmamo_message', 'rokkmamo_status', 'rokkmamo_last_toggle');

