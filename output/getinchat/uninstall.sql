-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getinchat_channel_id', 'getinchat_channels', 'gic_setup_step');

