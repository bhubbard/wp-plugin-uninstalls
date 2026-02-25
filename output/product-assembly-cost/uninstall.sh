#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'product_assembly_enabled'
wp option delete 'product_assembly_cost'
wp option delete 'product_assembly_cost_multiply'
wp option delete 'product_assembly_message'
wp option delete 'product_assembly_service'
wp option delete 'product_assembly_cost_mode'
wp option delete 'product_assembly_tax_status'
wp option delete 'product_assembly_tax_class'
wp option delete 'product_assembly_add_to_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_tax_display_%'"

