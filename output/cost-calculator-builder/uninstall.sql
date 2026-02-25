-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccb_feedback_added', 'ccb__show_welcome_page', 'calc_render_templates', 'ccb_lock_templates', 'calc_templates_favorites', 'ccb_lock_templates_email', 'ccb_quick_tour_type', 'ccb_appearance_presets', 'calc_hint_skipped', 'calc_allow_hint', 'ccb_general_settings', 'ccb_appearance_hide_notice', 'calc_sample_calculator', 'ccb_demo_import_content', 'stm_calc_created', 'ccb_version', 'calc_db_updates', 'ccb_version_from', 'ccb_orders_details_settings', 'ccb_orders_table_settings', 'ccb_pdf_tool_manager_template_key', 'ccb_pdf_templates', 'stm_ccb_woocommerce_calcs', 'ccb_installed', 'ccb_canceled', 'ccb_version_control', 'ccb__redirect_active', '_site_transient_envato_market_themes', 'popup_data', 'notices_data', 'notification_data', 'fs_accounts', 'stm_cost-calculator-builder_single_notice_setting', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'stm_ccb_form_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'calc_meta_data_order_%';
DELETE FROM wp_options WHERE option_name LIKE 'stm_mailchimp_integration_member_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'custom_%';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_setting';
DELETE FROM wp_options WHERE option_name LIKE '%_themes';
DELETE FROM wp_options WHERE option_name LIKE 'wp_org_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('calc_id', 'plugin_type', 'icon', 'category', 'title', 'description', 'calc_link', 'info', 'stm-name', 'stm-formula', 'stm-conditions', 'calc_saved', 'stm-fields', 'ccb_calc_preset_idx', 'ccb_savepoint_list', 'ccb-appearance', 'slug', 'type', 'form_id', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('calc_id', 'plugin_type', 'icon', 'category', 'title', 'description', 'calc_link', 'info', 'stm-name', 'stm-formula', 'stm-conditions', 'calc_saved', 'stm-fields', 'ccb_calc_preset_idx', 'ccb_savepoint_list', 'ccb-appearance', 'slug', 'type', 'form_id', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('calc_id', 'plugin_type', 'icon', 'category', 'title', 'description', 'calc_link', 'info', 'stm-name', 'stm-formula', 'stm-conditions', 'calc_saved', 'stm-fields', 'ccb_calc_preset_idx', 'ccb_savepoint_list', 'ccb-appearance', 'slug', 'type', 'form_id', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('calc_id', 'plugin_type', 'icon', 'category', 'title', 'description', 'calc_link', 'info', 'stm-name', 'stm-formula', 'stm-conditions', 'calc_saved', 'stm-fields', 'ccb_calc_preset_idx', 'ccb_savepoint_list', 'ccb-appearance', 'slug', 'type', 'form_id', '_elementor_edit_mode', '_elementor_data');

