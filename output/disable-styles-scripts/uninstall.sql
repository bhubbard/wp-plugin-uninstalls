-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('e6n_disable_plugin_css', 'e6n_disable_plugin_js', 'e6n_disable_theme_css', 'e6n_disable_theme_js', 'e6n_conditional_logic');

