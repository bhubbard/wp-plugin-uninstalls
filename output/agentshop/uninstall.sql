-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agentshop_settings', 'agentshop_activated', 'agentshop_oauth_state', 'agentshop_sync_check', 'agentshop_wp_creds_attempted');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE '%standard';
DELETE FROM wp_options WHERE option_name LIKE '%full';

