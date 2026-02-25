-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sales-page-builders', 'sales-page-builder-active', 'spa-woo-checkout-config', 'spa-woo-thankyou-config', 'sales_page_flush_rewrite_rules_flag', 'elementor_disable_color_schemes', 'elementor_disable_typography_schemes', 'spa_bw_settings', 'spa_pw_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_enabled', '_css_class', '_fl_builder_data', '_fl_builder_enabled', '_fl_builder_history_position', '_wp_page_template', 'name', 'link', 'designation', 'feedback');
DELETE FROM wp_usermeta WHERE meta_key IN ('_enabled', '_css_class', '_fl_builder_data', '_fl_builder_enabled', '_fl_builder_history_position', '_wp_page_template', 'name', 'link', 'designation', 'feedback');
DELETE FROM wp_termmeta WHERE meta_key IN ('_enabled', '_css_class', '_fl_builder_data', '_fl_builder_enabled', '_fl_builder_history_position', '_wp_page_template', 'name', 'link', 'designation', 'feedback');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_enabled', '_css_class', '_fl_builder_data', '_fl_builder_enabled', '_fl_builder_history_position', '_wp_page_template', 'name', 'link', 'designation', 'feedback');

