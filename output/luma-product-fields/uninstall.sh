#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_flush_rewrite'"
wp option delete 'luma_product_fields_flush_rewrite'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_migration_tool'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%front_end_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%display_sku'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%display_tags'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%display_categories'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%display_group'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%display_global_unique_id'"
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_luma_product_fields_meta_fields_%' OR option_name LIKE '_site_transient_luma_product_fields_meta_fields_%'"

