-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oneclick_reorder_button_color', 'oneclick_enable_reorder', 'oneclick_reorder_button_text');

