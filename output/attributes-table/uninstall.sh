#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'product_attribute'
wp option delete 'product_attribute_label'
wp option delete 'product_attribute_unit'
wp option delete 'product_attributes_number'
wp option delete 'al_display_attributes'
wp option delete 'ic_standard_attributes'
wp option delete 'ic_attributes_compare'
wp option delete 'ic_product_upgrade_done'
wp option delete 'attributes_table_settings'

# Clear Cron Jobs
wp cron event delete 'ic_scheduled_attributes_clear'
wp cron event delete 'ic_scheduled_attributes_assignment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_size_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_size_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_size_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_size_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_size_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_size_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_size_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_size_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_size_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_size_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_size_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_size_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
