-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('printfriendly_option', 'pf_button_type', 'pf_custom_image', 'pf_custom_text', 'pf_custom_both', 'pf_show_list', 'pf_content_placement', 'pf_content_position', 'pf_margin_top', 'pf_margin_right', 'pf_margin_bottom', 'pf_margin_left', 'pf_text_color', 'pf_text_size', 'pf-tab');
DELETE FROM wp_options WHERE option_name LIKE 'pf_%';

