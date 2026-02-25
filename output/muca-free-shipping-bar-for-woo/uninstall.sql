-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MUCAFSB_amount', 'MUCAFSB_initial_message', 'MUCAFSB_progress_message1', 'MUCAFSB_progress_message2', 'MUCAFSB_goal_achieved_message', 'MUCAFSB_bg_color', 'MUCAFSB_text_color', 'MUCAFSB_special_text_color', 'MUCAFSB_bar_padding', 'MUCAFSB_font_size', 'MUCAFSB_bar_activation');

