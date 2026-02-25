-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_loop_0', 'screenshot_plugin_code_1', 'enable_have_a_suggestion_button_in_footer_2');

