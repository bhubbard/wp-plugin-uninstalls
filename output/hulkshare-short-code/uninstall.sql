-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hulkshare_player_width', 'hulkshare_player_color', 'hulkshare_player_download', 'hulkshare_player_cover', 'hulkshare_player_type ', 'hulkshare_player_width ', 'hulkshare_player_autoplay', 'hulkshare_player_type');

