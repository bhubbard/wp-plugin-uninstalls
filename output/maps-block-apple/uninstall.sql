-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maps_block_apple', 'amfwp_settings', 'maps_block_apple_team_id', 'maps_block_apple_key_id', 'maps_block_apple_private_key');

