-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('voicethreadautoembed_player_width', 'voicethreadautoembed_player_height');

