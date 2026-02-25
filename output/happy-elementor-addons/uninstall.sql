-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('happy-elementor-addons_wizard_cache', 'happy-elementor-x98237938759348573', 'happy-elementor-addons_wizard_cache_key', 'ha__user_feedback_survey', 'ha__wedevs_12th_anniversary_notice', 'ha__spare_me', 'happy_addons_activation_time', 'ha__remind_me', 'ha__rated', 'elementor_css_print_method', 'elementor_icon_manager_needs_update', 'elementor_load_fa4_shim', 'elementor_container_width', 'elementor_viewport_lg', 'elementor_viewport_md', 'happyaddons_inactive_features', 'elementor_active_kit');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type', '_ha_library_type', '_ha_display_cond', '_ha_template_active', '_elementor_data', '_wp_page_template', '_elementor_page_settings', '_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type', '_ha_library_type', '_ha_display_cond', '_ha_template_active', '_elementor_data', '_wp_page_template', '_elementor_page_settings', '_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type', '_ha_library_type', '_ha_display_cond', '_ha_template_active', '_elementor_data', '_wp_page_template', '_elementor_page_settings', '_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type', '_ha_library_type', '_ha_display_cond', '_ha_template_active', '_elementor_data', '_wp_page_template', '_elementor_page_settings', '_elementor_edit_mode');

