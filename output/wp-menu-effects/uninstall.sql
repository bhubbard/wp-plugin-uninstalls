-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpme_hover_effect', 'wpme_selected_menu', 'wpme_apply_to_submenus', 'wpme_normal_text_color', 'wpme_hover_text_color', 'wpme_normal_background_color', 'wpme_hover_background_color', 'wpme_normal_border_color', 'wpme_hover_border_color');

