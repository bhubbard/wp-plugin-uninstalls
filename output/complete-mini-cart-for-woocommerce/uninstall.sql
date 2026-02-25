-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'cmcw_box_margin', 'cmcw_count_size', 'cmcw_count_position', 'cmcw_icon_size', 'cmcw_count_bg_color', 'cmcw_text_color', 'cmcw_icon_color', 'cmcw_icon_name');

