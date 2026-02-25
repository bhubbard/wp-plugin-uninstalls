#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dmfos_enable_weekend'
wp option delete 'dmfos_enable_date_field'
wp option delete 'dmfos_delivery_fee'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dmfos_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dmfos_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dmfos_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dmfos_delivery_date'"
