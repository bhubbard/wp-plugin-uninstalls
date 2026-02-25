-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dscap_player_compact', 'dscap_player_show_volume', 'dscap_player_show_download', 'dscap_player_align', 'dscap_player_color', 'dscap_player_bg', 'dscap_player_icon_color', 'dscap_player_width', 'dscap_player_show_meta');

