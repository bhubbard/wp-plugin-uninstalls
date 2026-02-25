-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'pscw_setup_wizard', 'elementor_cpt_support', 'elementor_disable_color_schemes', 'elementor_disable_typography_schemes', 'elementor_google_font', 'elementor_active_kit', 'villco', 'villco_import_progress');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('viwcpf_filter_menu', '_elementor_template_type', '_elementor_page_settings', '_elementor_edit_mode', 'enable_footer', 'metabox_footer_options', '_villco_menu_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('viwcpf_filter_menu', '_elementor_template_type', '_elementor_page_settings', '_elementor_edit_mode', 'enable_footer', 'metabox_footer_options', '_villco_menu_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('viwcpf_filter_menu', '_elementor_template_type', '_elementor_page_settings', '_elementor_edit_mode', 'enable_footer', 'metabox_footer_options', '_villco_menu_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('viwcpf_filter_menu', '_elementor_template_type', '_elementor_page_settings', '_elementor_edit_mode', 'enable_footer', 'metabox_footer_options', '_villco_menu_settings');

