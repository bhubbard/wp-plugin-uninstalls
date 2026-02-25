-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chatfromai_widget_id', 'chatfromai_show_branding', 'chatfromai_widget_data');

