-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dman_is_auto_complete_delivery', 'dman_is_complete_order_on_delivery', 'dman_deliveries_menu_title', 'dman_version', 'dman_flash_notices');

