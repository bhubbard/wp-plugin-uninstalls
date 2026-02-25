-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets_for_shortcodes_saved', 'sidebars_widgets');

