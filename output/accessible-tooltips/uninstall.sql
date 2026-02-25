-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('accessible_tooltips_custom_css', 'accessible_tooltips_theme', 'accessible_tooltips_interactive_border_size', 'accessible_tooltips_placement', 'accessible_tooltips_fallback_placement', 'accessible_tooltips_allow_html', 'accessible_tooltips_hide_on_click');

