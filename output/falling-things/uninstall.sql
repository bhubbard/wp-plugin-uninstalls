-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('falling_items_quantity', 'falling_items_speed', 'falling_items_move_lr', 'falling_items_display_on');

