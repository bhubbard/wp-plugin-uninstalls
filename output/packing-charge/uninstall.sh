#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pacs_calculation_type'
wp option delete 'pacs_amount'
wp option delete 'pacs_enable_product_exclusion'
wp option delete 'pacs_enable'
wp option delete 'pacs_label'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exclude_packing_charge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exclude_packing_charge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exclude_packing_charge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exclude_packing_charge'"
