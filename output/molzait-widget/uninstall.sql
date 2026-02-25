-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('molzait_restaurant_id', 'molzait_initial_color', 'molzait_open_selectors', 'molzait_hide_button');

