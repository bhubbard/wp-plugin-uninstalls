-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WPTestMonkey_do_shortcode_on_output_buffer', 'WPTestMonkey_show_dashboard_widget', 'WPTestMonkey_current_migration');

