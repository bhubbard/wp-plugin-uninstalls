-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kdmdks_guilty_details', 'kdmdks_guilty', 'kdmdks_logs', 'kdmdks_settings', 'kdmdks_innocent');

