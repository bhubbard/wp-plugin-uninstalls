-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('topbuddy_active_bars', 'topbuddy_global_options', 'topbuddy_installed_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_topbuddy_components', '_topbuddy_nb_bar_settings', '_topbuddy_display_rules', '_elementor_template_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_topbuddy_components', '_topbuddy_nb_bar_settings', '_topbuddy_display_rules', '_elementor_template_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_topbuddy_components', '_topbuddy_nb_bar_settings', '_topbuddy_display_rules', '_elementor_template_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_topbuddy_components', '_topbuddy_nb_bar_settings', '_topbuddy_display_rules', '_elementor_template_type');

