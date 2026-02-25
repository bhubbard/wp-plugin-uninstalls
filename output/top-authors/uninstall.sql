-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ta_version', 'widget_top_authors', 'widget_top-authors', 'sidebars_widgets');

