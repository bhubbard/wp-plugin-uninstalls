-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('renesse_widget_events', 'renesse_widget_activities', 'renesse_widget_plugin_position');
DELETE FROM wp_options WHERE option_name LIKE '%_updated';

