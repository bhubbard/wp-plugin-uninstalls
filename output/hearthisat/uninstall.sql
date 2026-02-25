-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hearthis_width', 'hearthis_height', 'hearthis_theme', 'hearthis_hcolor', 'hearthis_color', 'hearthis_style', 'hearthis_background', 'hearthis_waveform', 'hearthis_cover', 'hearthis_block_size', 'hearthis_block_space', 'hearthis_css');

