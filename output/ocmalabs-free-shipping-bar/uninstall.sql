-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ocma_fsb_position', 'ocma_fsb_display_method', 'ocma_fsb_threshold', 'ocma_fsb_bg_color', 'ocma_fsb_bg_color_progress', 'ocma_fsb_bg_color_completed', 'ocma_fsb_msg_initial', 'ocma_fsb_msg_progress', 'ocma_fsb_msg_completed', 'ocma_fsb_enabled', 'ocma_fsb_text_color');

