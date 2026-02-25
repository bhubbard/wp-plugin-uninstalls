-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ftb_widget_key', 'ftb_widget_style', 'ftb_widget_button_url', 'ftb_widget_button_id');

