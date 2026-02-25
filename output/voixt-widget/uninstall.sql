-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('voixt_agent_id', 'voixt_widget_style', 'voixt_widget_position');

