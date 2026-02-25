-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kasuga_scbc_button_top', 'kasuga_scbc_button_right', 'kasuga_scbc_label_copy', 'kasuga_scbc_label_copied', 'kasuga_scbc_button_size', 'kasuga_scbc_button_bg_color', 'kasuga_scbc_button_text_color', 'kasuga_scbc_button_bg_transparent', 'kasuga_scbc_enable_max_height', 'kasuga_scbc_max_height', 'kasuga_scbc_custom_styles', 'kasuga_scbc_enable_linenumbers');

