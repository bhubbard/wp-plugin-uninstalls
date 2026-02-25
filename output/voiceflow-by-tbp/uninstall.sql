-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('voiceflow_project_id', 'voiceflow_widget_title', 'voiceflow_widget_color');

