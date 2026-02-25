-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('feedback_farm_projectId', 'feedback_farm_selected_menu', 'feedback_farm_end_image_url', 'feedback_farm_identifier', 'feedback_farm_localization', 'feedback_farm_page_name', 'feedback_farm_theme', 'feedback_farm_types');

