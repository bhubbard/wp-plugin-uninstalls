-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpp_text_intro', 'cpp_hide_prefix', 'cpp_prefix_protected', 'cpp_prefix_private', 'cpp_use_default_form', 'cpp_label_text', 'cpp_button_text', 'cpp_button_y_padding', 'cpp_button_x_padding');

