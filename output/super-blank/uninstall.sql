-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('super_blank_primary_menu_id', 'super_blank_footer_menu_id', 'wpforms_settings', 'wpforms_activation_redirect', 'wpforms_pointers', 'elementor_active_kit', 'elementor_install_history', 'elementor_checklist', 'theme_mods_astra', 'allowedthemes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpforms_dismissed', 'show_welcome_panel', 'metaboxhidden_dashboard', 'elementor_dismissed_editor_notices', 'elementor_admin_notices', '_elementor_edit_mode', '_elementor_data', 'ast-site-content-layout', 'site-post-title', 'ast-title-bar-display', 'ast-featured-img', 'site-sidebar-layout');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpforms_dismissed', 'show_welcome_panel', 'metaboxhidden_dashboard', 'elementor_dismissed_editor_notices', 'elementor_admin_notices', '_elementor_edit_mode', '_elementor_data', 'ast-site-content-layout', 'site-post-title', 'ast-title-bar-display', 'ast-featured-img', 'site-sidebar-layout');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpforms_dismissed', 'show_welcome_panel', 'metaboxhidden_dashboard', 'elementor_dismissed_editor_notices', 'elementor_admin_notices', '_elementor_edit_mode', '_elementor_data', 'ast-site-content-layout', 'site-post-title', 'ast-title-bar-display', 'ast-featured-img', 'site-sidebar-layout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpforms_dismissed', 'show_welcome_panel', 'metaboxhidden_dashboard', 'elementor_dismissed_editor_notices', 'elementor_admin_notices', '_elementor_edit_mode', '_elementor_data', 'ast-site-content-layout', 'site-post-title', 'ast-title-bar-display', 'ast-featured-img', 'site-sidebar-layout');

