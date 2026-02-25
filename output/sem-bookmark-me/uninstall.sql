-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_bookmark_me', 'widget_contexts', 'sidebars_widgets');

