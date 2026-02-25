-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dlpom_menu_id', 'dlpom_menu_item_id', 'dlpom_number_of_posts', 'dlpom_schedule_date', 'dlpom_repeat_interval', 'dlpom_schedule_enabled');

