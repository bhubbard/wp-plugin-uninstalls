-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notes_widget_wrapper_defaults', 'notes_widget_wrapper_default_shortcode_settings');

