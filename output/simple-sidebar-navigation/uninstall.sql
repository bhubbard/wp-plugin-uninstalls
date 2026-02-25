-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssn_general_settings', 'dropdown_css', 'custom_css', 'blog_post_links', 'target_attr', 'simple_sidenav', 'widget_simple_sidenav', 'sidebars_widgets');

