-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('content_protect_plus_dir', 'javascript-protection-proversion_dir', 'protect_plugin_value_click', 'protect_plugin_value_select_text', 'protect_plugin_value_subject', 'protect_plugin_value_color', 'protect_plugin_value_user', 'protect_plugin_value_admin', 'wp_content_plus_btn_f12', 'javascript_protection_proversion', 'protect_plugin_value_print_no', 'protect_plugin_value_pages', 'protect_plugin_value_posts', 'protect_plugin_value_include', 'protect_plugin_value_include_posts');

