-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eacs_icon_type', 'eacs_icon_pos', 'eacs_icon_color', 'eacs_icon_bg_color', 'eacs_icon_hcolor', 'eacs_icon_hbgcolor', 'eacs_toolbox_heading', 'eacs_toolbar_color', 'eacs_toolbar_bg_color', 'eacs_titem_color', 'eacs_titem_bg_color', 'eacs_titem_hcolor', 'eacs_titem_hbgcolor', 'eacs_ticon_color');

