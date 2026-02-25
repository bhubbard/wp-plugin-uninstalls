-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mdp_selection_lite_widgets_settings', 'mdp_selection_lite_custom_css_settings', 'mdp_selection_lite_uninstall_settings', 'plugin_id', 'mdp_selection_lite_widgets_names');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

