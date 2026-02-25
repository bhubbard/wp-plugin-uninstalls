-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpwll_options', 'wpwll_background', 'wpwll_logo', 'wpwll_custom_css', 'ewl_menu_title', 'ewl_plugin_transient_cache');

