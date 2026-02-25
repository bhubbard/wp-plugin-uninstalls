-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('feedback_fish_project_id', 'feedback_fish_selected_menu');

