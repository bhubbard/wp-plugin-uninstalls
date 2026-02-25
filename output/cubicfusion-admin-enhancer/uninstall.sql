-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cubicfusion_admin_toolbar_nodes', 'cf_plugins_shortcodes_cache_widgets');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_template_css_extra', 'cf_dismiss_widget_cache_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_template_css_extra', 'cf_dismiss_widget_cache_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_template_css_extra', 'cf_dismiss_widget_cache_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_template_css_extra', 'cf_dismiss_widget_cache_notice');

