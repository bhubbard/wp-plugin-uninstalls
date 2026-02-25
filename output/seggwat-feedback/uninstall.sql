-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seggwat_project_key', 'seggwat_button_color', 'seggwat_button_position', 'seggwat_default_behavior', 'seggwat_language', 'seggwat_show_powered_by');

