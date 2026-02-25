-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sifency_addons_version', 'sifency_addons_widget_analytics', 'sifency_subscribers', 'sifency_feature_requests', 'sifency_addons_settings', 'sifency_addons_rollback_history', 'sifency_addons_version_history', 'sidebars_widgets', 'sifency_uninstall_flag', 'woocommerce_breadcrumb_delimiter', 'woocommerce_enable_reviews', 'sifency_addons_stored_version', 'sifency_license_instance_id', 'sifency_addons_pro_active', 'sifency-options');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sifency_widget_favorites', '_elementor_page_settings', '_elementor_edit_mode', '_elementor_data', 'career_single_metabox', 'client_link', 'event_single_metabox', 'team_options_metabox', '_sifency_builder_active', '_themebuilder_conditions', '_sifency_initial_type', '_elementor_template_type', '_elementor_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('sifency_widget_favorites', '_elementor_page_settings', '_elementor_edit_mode', '_elementor_data', 'career_single_metabox', 'client_link', 'event_single_metabox', 'team_options_metabox', '_sifency_builder_active', '_themebuilder_conditions', '_sifency_initial_type', '_elementor_template_type', '_elementor_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('sifency_widget_favorites', '_elementor_page_settings', '_elementor_edit_mode', '_elementor_data', 'career_single_metabox', 'client_link', 'event_single_metabox', 'team_options_metabox', '_sifency_builder_active', '_themebuilder_conditions', '_sifency_initial_type', '_elementor_template_type', '_elementor_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sifency_widget_favorites', '_elementor_page_settings', '_elementor_edit_mode', '_elementor_data', 'career_single_metabox', 'client_link', 'event_single_metabox', 'team_options_metabox', '_sifency_builder_active', '_themebuilder_conditions', '_sifency_initial_type', '_elementor_template_type', '_elementor_version');

