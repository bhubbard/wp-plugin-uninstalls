-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_alter_inventory_tab_payament_section', 'alter_inventory_bill_ship_section', 'alter_inventory_shortcodes_section');

