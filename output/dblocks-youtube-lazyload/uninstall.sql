-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dblocks_textColor', 'dblocks_color', 'dblocks_playButtonSize', 'dblocks_iconType', 'dblocks_svgContent', 'dblocks_playButtonStyle');

