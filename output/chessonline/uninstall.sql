-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('co_chessboard_size', 'co_chessboard_alignment', 'co_lightsquare_color', 'co_darksquare_color', 'co_display_infolabel', 'co_link_text', 'co_link_url', 'co_link_target');

