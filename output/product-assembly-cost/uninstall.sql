-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('product_assembly_enabled', 'product_assembly_cost', 'product_assembly_cost_multiply', 'product_assembly_message', 'product_assembly_service', 'product_assembly_cost_mode', 'product_assembly_tax_status', 'product_assembly_tax_class', 'product_assembly_add_to_name');
DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_tax_display_%';

