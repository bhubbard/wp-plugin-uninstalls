-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('selected_button', 'floating_social_button_float', 'floating_social_button_position_top', 'floating_social_button_position_left', 'floating_social_button_disable_mobile');

