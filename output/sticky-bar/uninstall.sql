-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpati_sticky_bar_background_color', 'wpati_sticky_bar_text_color', 'wpati_sticky_bar_link_color', 'wpati_sticky_bar_link_hover_color', 'wpati_sticky_bar_button_color', 'wpati_sticky_bar_button_text_color', 'wpati_sticky_bar_hover_button_color', 'wpati_sticky_bar_hover_button_text_color', 'wpati_sticky_bar_location', 'wpati_sticky_closing_animation', 'wpati_sticky_bar_after_close', 'wpati_sticky_bar_after_close_days', 'wpati_sticky_opening_animation', 'wpati_sticky_opening_delay', 'wpati_sticky_bar_title', 'wpati_sticky_bar_content', 'wpati_sticky_bar_activate_button', 'wpati_sticky_bar_button_link', 'wpati_sticky_bar_button_label', 'wpati_sticky_bar_activate_close', 'wpati_sticky_bar_close_label');

