#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcd_tables_created'
wp option delete 'wpcd_category_discount_version'
wp option delete 'wpcd_process_method'
wp option delete 'wpcd_migration_complete'
wp option delete 'wpcd_category_discount'
wp option delete 'wpcd_attr_discount'
wp option delete 'wpcd_brand_discount'
wp option delete 'wpcd_tag_discount'
wp option delete 'cron'

# Clear Cron Jobs
wp cron event delete 'wpcd_apply_discount_setup'
wp cron event delete 'wpcd_remove_discount_setup'
wp cron event delete 'wpcd_apply_discount'
wp cron event delete 'wpcd_remove_discount'
wp cron event delete 'wpcd_discount_legacy_migrate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcd_discount_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcd_discount_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcd_discount_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcd_discount_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcd_original_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcd_original_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcd_original_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcd_original_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcd_original_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcd_original_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcd_original_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcd_original_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcd_original_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcd_original_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcd_original_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcd_original_price'"
