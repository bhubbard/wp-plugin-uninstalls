-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpins_allow_tracking', 'wpins_last_track_time', 'wpins_block_notice');
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%';

